Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137AD36EAB6
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398094; cv=none; b=CLJnMS5SWcX4FJtZFjT8LErrYisQg7j00LeKFzOS39Jm3PRF4yixy79/t3+CxJh3JpjZFchDSXGbRgjsh+szz2yLSB3PtCQobT3RAOAfqofNSZsbhUO/pBu4SOy5e8OqhJojmyJd93N9bj1CtZRd+X+iC5Oc7tXRA3VUb17pUTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398094; c=relaxed/simple;
	bh=/L2e8n1Ak7eeVCaYhiB9V4NfsH9G8aP8YVKQfAZ+Zsw=;
	h=To:Subject:From:Message-Id:Date; b=OGB2rnT2VPeMzv3KdXAfzxSAMo+CJixHTrdxzCVUqgoqomz1gkQvLyYXRI/CbWQEnlpAZIFDkEZvZWCXHtfTYLT0mbyRmOHvfg25zN5FBXlZP0Q2P82H3ky7RfYYzZoA6+j7XO3erPgMLGr1N7Awv6ubNe890oDAWszrn0ZmLM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4KycDJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4KycDJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FBFC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773398093;
	bh=/L2e8n1Ak7eeVCaYhiB9V4NfsH9G8aP8YVKQfAZ+Zsw=;
	h=To:Subject:From:Date:From;
	b=D4KycDJ0yM+LZlF8EEm5VMRcrYBsfU4aUPgljfLuJNLM0Q6evFQGFArkbsE9gOhwG
	 iokqwl+5Nyut8kRAxKji0Un7w+x0o9OpJST8ewRheGdwNCby3z+W5ZKZq2MRGovv8W
	 3+UDqBWn5J4zymi+9I+Cg304KZ8cPA59opveGORmTh+DUyEdU5CnUu3eqH9SOi5yqH
	 /73tCKOQfZQCNR2urxbNOKXZtawQv+iKew3Pbd/AwOS1pzKsWzKPKeY+/bCw3YeXxL
	 l/FaSvIP3qUXN5/psiQwWwdgmwnqPUqqOE4CJbiV10xmHevHndvGvX3xj/RomcrN+V
	 X6Jx37B3uTDLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A26105F795
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339809358.29979.11731364145946885658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4894cbe3fd79c5887123793e12462241f31d5e7b0fccad3a014a72afabc44b61
Date: Fri, 13 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773398093
