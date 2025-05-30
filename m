Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563D143736
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748631594; cv=none; b=PaWFIYJ15n7j2tEkwcd58YwXCPVDzyF1/jybPX5JFFMcZUUBdqXi5ETz4JUdWmyVT2Eb5oeVaeVVMJ4/sYpUyxaJRy3FNOREHCUKDPRdsQkDKzJ11Rm8KCB/yI92AZiF94ZxEh8pSKnmL94ntqQQ/eRFSoXnnb25nO8zP5eBSKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748631594; c=relaxed/simple;
	bh=1zKdlHq7ejczwePWbkPwXWFMxK3zJtjXTxbFdEBpTQ4=;
	h=To:Subject:From:Message-Id:Date; b=chRe//D9sZtCGEV+ACi+baC2LLwDT4EFbCuSAbaN7OnlpMsYDMAkkMJCw6swM6pDGtAvjT8vO25G0TNYsWkIw8OBzqqkL2W7qaodH8dQAikoxfT0iT9H41DBX5TS6wufeQ6KSepSqlSsGsZfpItbelAJR8d27ZSLOFOsrC+fBeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhTgQiUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhTgQiUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748631593;
	bh=1zKdlHq7ejczwePWbkPwXWFMxK3zJtjXTxbFdEBpTQ4=;
	h=To:Subject:From:Date:From;
	b=MhTgQiUF4EZv3ttEpcXbHSf6FQ3P+bwEBgWZ2K/KsFlgcKvjhm4VhgfKTxOofNwkC
	 HUDdqLjwZFcEUqcjeraUWJNvBzyFFonWyxlmc0zzEP4eo9K2fsHhqAk+yJfLBV+/iM
	 xnK5fznPer9VzFJCD0r7WQCHI/1fIfa7ykxgn46TeajjFZr4W06oF/gw53PWYLpubH
	 nqmqO9XIsle4wvtr2h6xVKMbJFfbuKZmbwZzjKfBaXkrmVeWR34clbKEXbhNC2uKlU
	 W4i1nPYD1exyOS3UHcfpMZ+zhUyXi87OMiqIYy5O3+7ooN6fs6g+ruJVuLEK/NVCQg
	 AnsD+mH30j76g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9141AC5AD49
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863159357.25525.17126261653005684800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefe4bba30b9d0e341d71dba44982a14f18410dd322b1149f34bd156ab3ef293
Date: Fri, 30 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748631593
