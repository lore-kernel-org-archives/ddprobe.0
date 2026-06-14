Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FE723507C
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781456794; cv=none; b=EGsA/rTd/igTnZXW8xsSuaey8gydRX9+viMSVPZdIxXkEXUWOKSU419T/ermZCxLVnMD3nrwIF6J+JkgYcatv9Q2knFdEL7EMSOn22CnBX2TgJLW0hD2qy8+OQGXBMbe7brBYpgxIgD2zp3uc/R9aQUbXDgkC0oIRieR29f7IpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781456794; c=relaxed/simple;
	bh=OFdFuTmFAHJCwcwEmcLYS/svJqH9UKXmLq+x5HPXmj4=;
	h=To:Subject:From:Message-Id:Date; b=V+LzSiwVbDbF20gPOjpmhixeCYEmVOglMVQrIIt+PqmmZa36KYn/I2vb0drNr0OiuoPiuiJ16AIivpJk1km65gT9d8B9pGkHh3cYe1GR2fuPYWjgMTLZDQqVblhfy9X03CU9W/BnUWwVDRKNivyUnFDuFMWJo8Ivps/z0TdSEnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqLbNtcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqLbNtcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29A5C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781456793;
	bh=OFdFuTmFAHJCwcwEmcLYS/svJqH9UKXmLq+x5HPXmj4=;
	h=To:Subject:From:Date:From;
	b=oqLbNtcmtscIALMKul8JUqdRRNAZzv2Yo6Eqy8rXouRl96/MQtqhgqO1EflBLVu83
	 T+dLZ1AsZ46fDkhEr42bvDAkC1u6uW52dZffnxhDqD7UtqZzYDYFMZ+4Ng0MrvjljH
	 yTOwCd2ej4qqDOrXuuQFCoEM+i1r8hGckjm/ndZP5MieAm3Y1pWrGsZhSIkMWCaCxO
	 l73sj9vBUb3kmD+ucnfutvfAYHhmdrZ48X4Y7C/20PEYg05Rm/bry5GmHsFUVuNQlC
	 FHm4pxjPw9NC9NstDCRbizLepcIxk3MgDF512WDr6U2rJvjhE+b0ZmLojw2OK5E+zr
	 Feo8MT2fAOlSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B721DCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145679371.26901.6987660515207956076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28f5a578836a3fb2248540979814248e8f661c83331bf28bedf9abcbb9e2970
Date: Sun, 14 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781456793
