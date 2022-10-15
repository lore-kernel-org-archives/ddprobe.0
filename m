Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD1F57ED
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBB7C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665826853;
	bh=A2jHTIcwMeSpOn8xL8DCvjM/1yr4MLq4QKuG6+zz76M=;
	h=To:Subject:From:Date:From;
	b=KiVhGi3+l8mldPldfnG7g4SB3wrJw4ZR4b4c/+3sPi5a8RlbbQ9qXKfzRSCFs2dmt
	 1w336OWjY+7ZrMTSxl0ca8mul6yTksy7P3HIo6zerS9oM60F7xcimUlaM6u+3T0Exa
	 wKEJvDPdwzxVI8ADbrNE1hDYWZn6C227dnz0xpYWIDTzTE60NSRAk5m2EHSqI8UI7b
	 sUhZiC8/qYKkg+tGX/Pc8PrDHuQaVrvTaAKMYoOEG9fC2NvxqdCuIASo+IC0E5ruIw
	 3YmKLkgOcBwAkvG3twrcMbA3Pu10TJ0RHe3hxvvHE+lq0dj33LuVmlamwhPkFR3+NB
	 goGpw13T3qbnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A140C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166582685334.31035.18374348736486861385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43bbbd70b287437b1c51ce0b578ba2cb2e2d61fcd19faf29d4e0b3176d019d1
Date: Sat, 15 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665826853
