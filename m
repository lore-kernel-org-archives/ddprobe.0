Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671C97E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAZh2BsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00D7C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697248628;
	bh=EsiqWU3HJDC0+s8eqeN/f1jveJHAxIlOJDTX0Cnxh4I=;
	h=To:Subject:From:Date:From;
	b=kAZh2BsSW5QblAsmBlGrLl5aT228IhNl0Im2sFpi6PvaEzlooRIhGnky8uxmkqeWA
	 jJB4siZ0BfIwdmSim67mgEmbDcwqqEZDLFIVi85x+QMVnqe0w2k9HwLE4j6K3goNg+
	 Zczvpcd1kxB45SL0HBlVY+FemXhZsluZHv9b1Pda6gpaw5k4405AoRc0uSnBS3VY5p
	 0/7tHT/TYgdG4lsrpJjFRHkmseTGh2EihH4yQZckbe5DgqwCtwp/XbtOnezBk4tLgd
	 3qx4Sks2waGCbeZMeINwvXPQzEPRaDvWvFWsDQf2jnLjVBhyUscSsfwHdSr6zFv4IQ
	 8KjcHMcyoADIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5ECDB47E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169724862869.546.13058755136334359037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2431212eed55c2e1930523d24eff4f9cc9f2f61dcb7c4d8eda79fab3c4e7be63
Date: Sat, 14 Oct 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697248628
