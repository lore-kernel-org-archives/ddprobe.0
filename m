Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608137AA7F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780978474; cv=none; b=szAcaV988JmJnWZFT1YoH0uSnKCUx0x/XRe4BC8TZTlOMDF3jjdZvQ8Hf+zCtwi7u8XCigFCvHa3FHjfvTycO2c5pC07Sbhm1OtVK1T1NCeusVNgBc1rGaWBNb20UVXN1e5i1GwL0dGAcMUJgq0XNcB0/ZVDWlwC9ss9RJUFPEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780978474; c=relaxed/simple;
	bh=Ieu5M70YFTcXif7lMdyN18jK5a7FURyZSnctZRixRck=;
	h=To:Subject:From:Message-Id:Date; b=q82iX+/pFFx2c7MoY1M2VbcrhQCKHZbJpKuEPtEKIILy1O6VuLA/lnm2yoCJkxAcZ5aJb7ezgLqt20dU5ORZyHKpGitPCp4t6sNQ9My5pMYcHn/NQ2hoPAETzCHb9XOvxW+IuXv7riNjnP8+1fUvw8poho1DDqlLInFkaIFed0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FczfPu1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FczfPu1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C49F8C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780978473;
	bh=Ieu5M70YFTcXif7lMdyN18jK5a7FURyZSnctZRixRck=;
	h=To:Subject:From:Date:From;
	b=FczfPu1an9GiLGsfpAURJ2o7NaaWpjbik+xt1iZEfpOpDMOLgtQbcBc7YaQA4fT4L
	 q00+kJWzdMhNwjANpJ2No642cG+1GFhBg6HB5EIStg61yzPtIJj3gjIZU2RP1n1RCf
	 wf/c5XtYcLDEUhisiwxqzZ3KJ2rH8HKyo0NHo6nGmlz0GDTbDwOm5WGfVZYUcR2Fbv
	 TeLWkos1AzZ/hfTjiHZ4kmQjxHT4Cl7g7oYgZeboaC8AzxMtBmsGvFfbjQsmbUUxfs
	 oTcLvaPOgiKhYGkzUBnKfd/jieWlqgnGcK4UGxZhMvccPDhY23RMZ9Z+Sg8yo/K3hj
	 cMVHNW3IdkYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA649CD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097847368.28660.2998407518087449544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4381f198a5965e32c966fec48635d0dbb92f94170eb529c85d73dd788d2ae96
Date: Tue, 09 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780978473
