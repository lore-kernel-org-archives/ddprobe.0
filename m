Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D52FE15AC
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C33AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672450287;
	bh=xVmjGktezzkTl2GK2nexpEOGWJgYcDzH7o+0rD1wG+c=;
	h=To:Subject:From:Date:From;
	b=mZ89gLOmtLCRV4bNUtaM96ElwKhtFamwMFKYo5GA3kZykr5VaSeaXkLWJDeohjiZp
	 sxW2qLkP2CzxcQHWyiihV0Ja76kSM7il8xFfta+vV0A2u45y9Tlw0UMhJKHml7Rl/n
	 2JMiiSNIcwo/OCJNhnQBG4YJAGup3j243a2+l+ctXa6s2OKvh3pKSB7a/wz9qLLtte
	 U326kZVmUyaSh4PAvWodTZHSiGEM115fj9oZ1RfyeJneRQO+T9d+MWTGsBUVc3aHRE
	 jPJzNxYprP1ecX3x+Qt09HYJdnYm9LLWQkup0HO3p8Wg14E4n8QE26D7CpZNtZeJ4m
	 y8NFVX6PNGy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63777C3DA7C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167245028740.6492.6474470023096612087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10b2fa4645f1961975f9ec1ca33413add0e7c7d2482a4ffb95c90e2e211dbd1
Date: Sat, 31 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672450287
