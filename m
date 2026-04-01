Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EF43290D5
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775029534; cv=none; b=niPMXTksoLILVI1fQcYS/M70+38P5GTN20G1q/CtODWk8WyYj4cPcP6TA88X2oG+jcGvRcHSf8NmbC8czU2sYRTYSAHQXEW6eyZon88L6RHPjHWqxkw1smmKPPtYnLkpYsg649kfbYYakOOFwjLQxWgpkMUF+Kxo6qT8zvk8VEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775029534; c=relaxed/simple;
	bh=6CjR7ax2mIOQ4mQU9bL3vqnY/fOzk7VhtaFYVfkg9Yw=;
	h=To:Subject:From:Message-Id:Date; b=ejd2LDY9UBqnHqoH2aSK7sAFBgTUtL3B8CGQz2y8alSMy6JIBWc3gsKvAZ6GU24GG5B1Rg3sWN0xeQypG6KDd/5VxrkgM00dTddO4yBdP73+KdRz76YjJhgvXLEDEK8M1QYucF5fW644PTxtNqbOKIebnLrXZyqEApce0mvkulo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg6p8lsW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg6p8lsW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF7AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775029533;
	bh=6CjR7ax2mIOQ4mQU9bL3vqnY/fOzk7VhtaFYVfkg9Yw=;
	h=To:Subject:From:Date:From;
	b=Xg6p8lsWHEv+eA+ubpZkGjTkZbB5BYkt/STTwiuZyn4wRoWKbPq4f38oSytlCpQrG
	 /mcA0fRaNbrpOb1u9167dwuLaMdhCaQfVsyn5NAZiCwUNrWkhyp3ilb/5ATm5yhmvP
	 9AO7ZO3DHxmVyY1d73SVcDrz4N+XN8QEZZQ+QhBPqFokzgnwU/DwBcnNv4NzqSYwLM
	 0DXtAaxSsf97krM6du3yW3z7ctlnzA9XnUhQAT4+fPUYtpS1BNZ4/h92FwxVVRQLQU
	 RokrcWu85QDFoko4OAbmz9ymT2Jv3+HixWEocYVN/Ei7kdlUDDFscSv59akXqD3t2Q
	 TYqGKw09BQuwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CF7D3514A
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 07:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177502953368.8771.274406353963273831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 199e11166429f8d408086bda6cf5aa5dd4d437758d4a87fcc640cc87eb839785
Date: Wed, 01 Apr 2026 07:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775029533
