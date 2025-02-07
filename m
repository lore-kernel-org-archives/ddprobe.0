Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745C71DC9A3
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738924554; cv=none; b=CH+fqoXL91dNDBZt+c0SEWHYLnRXG8BDFJxsD0c2rY95qqVeEzmnq19DPPKRHyh25EA6UqyKAEwc/KHcPkVlqCMeYDUqBrrF05NT8hudZQzDXPZok8i08+sjhxBK47P3mfZ5293jff9vMEMoE0N5nI6VNGUluoUVV0VaVSfU64k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738924554; c=relaxed/simple;
	bh=WuXv4duAhDjTtT9H0beuIuiNzuaGrseZsHgSlJGYNmc=;
	h=To:Subject:From:Message-Id:Date; b=pdJufsJFH2lXDrqoRDTn9oU5BIoeQZinzmZUXrE7E9bThmGvGvfS2YGOm5acMsCHTUeTvS7w9ZddIjnkH7wU9+zw2pfh0r0iYJf7RjwUn8/EPgq2SiU/IEmGDuD0pgJmyzZsxdVmhXzS42xBCczmeVcRUIOieD/c4YtmgMMbAyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksh/wzxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksh/wzxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ADEC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738924553;
	bh=WuXv4duAhDjTtT9H0beuIuiNzuaGrseZsHgSlJGYNmc=;
	h=To:Subject:From:Date:From;
	b=ksh/wzxwXCBoSctQ4GBUSq6uEKth3J9ZxYmEZ16n/TjDjxjgC4o0EaFeJOiflJl4S
	 QtKSS0Jz8ksLsOmPPCFNqAk4++aEtsUQrDGPtcW4P7C5Y7mEsna3Rvs/YGpXIGviAU
	 d55rUr1y5sS9OIKTuPt2z+EGdkqaEQfevhcQZkqz6VzrLXlauXh6gaGw/NjuX1Oxal
	 SEO700rrvIPiV8kSBGQi3of3Rtq9kOmMmvrzyvRTB3wJLVDwrE5M3iJbELX+adPsNf
	 Km24gm+c53h9cYN48D2L5m6yYov4EpBJC6SBBKbNzg36iqx+DlT5n8BKSnVBXgC2ZZ
	 7T5tsvTbwhNCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E1AC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892455366.11240.8560803062349038866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ae264520fec0eb04960a427e4f749b057fd56fdf1241ea7bacc2ea64cf5ea6
Date: Fri, 07 Feb 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738924553
