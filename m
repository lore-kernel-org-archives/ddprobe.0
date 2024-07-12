Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE024C6C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720750043; cv=none; b=FJ5wfu16eAqVfJvM6xXpzrDacXz0zVSOSw6Zg57E/1zrz9Eg9ermkPiWnQchyvUqFD5+xEsqWbUDMtWjKl1cgb/7+LlZtEvFQRmcgwZ8wgOmUg06qjMi/AaLcRdVojt+ehqg932z5EHwkiN6jUVEO3GreKKt9fng+Kvi/I1Rqgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720750043; c=relaxed/simple;
	bh=2C+Kxlp3Bgm6N8qsVc6nWjywpf+QsVXB04uLjIB992Y=;
	h=To:Subject:From:Message-Id:Date; b=eKjz6BbkPTkf1/pqToCrUppQtIBlHX/+HMGJR1zv0Mm452mN0PJTDUJ5VdfPgfL/HLEowjqI2TgMlclSYBwRh8flfCOpcJrPF2cLCSbG6GlJnOQUIIKOKZvzQAuDXbEOQZmf5NPpnGYh9FT/EzxHRTgzPVLJSvEgaN+CsoTK4a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNVOmKwz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNVOmKwz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C2AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720750042;
	bh=2C+Kxlp3Bgm6N8qsVc6nWjywpf+QsVXB04uLjIB992Y=;
	h=To:Subject:From:Date:From;
	b=hNVOmKwz6cUiClZwC6V4gslkRmHorExZUFX79vAkEqURz+z1Y/pC/ko8lTns/CabG
	 /p+kvCqyHOBBADIhmizNt7lB7RbzmNGGMEox83SJlZXoAQXouA7e/erFU4XUMojrah
	 Z7bjkmMOPsrg2TzS4m7nN2KrBCdUhnh78rTIhUJ+KMEbCr86+iI3nJpNvcZt/x+x1u
	 6UQ8PzIZUa0XGdJpGUiGAomyTB8L8YsqTbLwSpdfZH4v2ZBUQoRhslo50dkZjkWezp
	 fGjeM0vkhl/Uybx+aeIbYg+wFsgGImw9JLf/iyiGM/eyjRENYL2oATiGvROughTvcx
	 nmPWhy0G5pgSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D068FC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172075004284.7596.3158853895211595554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3863346414a644e13bc927647d5775a4f9c112fa9647733667fff13fdc7ee7b6
Date: Fri, 12 Jul 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720750042
