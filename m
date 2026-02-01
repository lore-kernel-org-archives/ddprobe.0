Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A1213FEE
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769910834; cv=none; b=XPMbngTSqx841V2GH4FNfBTT3RUkxra91r0imhHDiYsHwA9A626TwqoXZb777b4T5CBQGe5S9G2Im3p8lOcUFbsbMs5/lQEjFAgG3K/4iL6d4UkLIInjLMtKMtOTpHXQtWHo2jNl2849DJkXDia9SVHDj7cHhqNi2TI1hlg9Et4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769910834; c=relaxed/simple;
	bh=8lSUwFKcvJ7x1rHBk01LzSY3My15Z1XZzfQDPFORP64=;
	h=To:Subject:From:Message-Id:Date; b=u2xXl+rNYvfz5At+EG/XiWW5YOmFPJnnkPBjG5LFkxwfGv6HCff1IqsHX8p4+txnSRo/hnZSNDsEqAUGDF1MtfB4reNVPV+kqaGGsdxdZcYzT88M3Ed/9I8CHDBv/0NHAr2VmRmYbwLRo12MJVzRe1Cfn7rO5jZLJ2YTJeAiZgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFtERkRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFtERkRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4639C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769910833;
	bh=8lSUwFKcvJ7x1rHBk01LzSY3My15Z1XZzfQDPFORP64=;
	h=To:Subject:From:Date:From;
	b=HFtERkRSLACZSFHR8MM49ICGX5WevbBUeZs6bBxqwAOwVNB3yjv++hwmYWttOG0rv
	 nw42HMneZcd9Hk3IpdC72NNUo8Je48dPfmznIw4efBaksT/H2m6L0nOa0G+czC9ATq
	 E7YAJmosE3qjd9jfQ751mIeTGKpuWa3gJev/bRNZDnE1HHkXHFeLnhv0xMa6vJkTA5
	 rMM1ZalstHXYbv4YwxMiVDBVYTxFe2OKGODs+Qz8EyijWvBHXAr9wFAFHUkajEVIEN
	 mKvguALsh0CRzbSZt4Jz9iv/Bc1sTjlAGSdH71yahMv1zCeC/AUjAhi9AJUQVtx2qq
	 B49HBQDY+YGLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2638E7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176991083357.32393.527663059353640803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cebd5717b10110dd83e263e4a1e60ca9911b5b19bc6da618704090b41a432a
Date: Sun, 01 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769910833
