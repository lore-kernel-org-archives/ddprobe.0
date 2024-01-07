Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BF312B60
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAMtFvE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB1AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704620296;
	bh=XtEV41n56y55bnz81K8jJf25BnBaziinCX+1RRX2rMU=;
	h=To:Subject:From:Date:From;
	b=qAMtFvE/Sy1nytsfw+R+eJccDPt5qIJp1/dnjpH4DunCtGdGqp6NypQ3QjJwof3VM
	 Fwpoczd96Q2fdwKb50DZ9ASztBYDi3xb0B3Cc/N0AKy+FgWkUNJOB+Sd/FRRkeQZAf
	 VJ7gP6G7uzhMoK+sTfV9yM7e7jBU9qI3XEww3DeYENiBzFCw9VoIZ69DWuxwMJdS7h
	 v2LMcMp2k2Eotdobpy1JDt4COjL8ELMkHWvV9M8Y8jzRNor0HeXHVzMUUBgfYqvXbh
	 98HE2HI6TM41xyZN5HAD6g7bKowA8Jo/ZvZ9jf1z2mLO5krRtB2bSib2/XrIVNE3oy
	 i+jO9fGI8Lanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA27C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170462029636.19604.4414144558109726450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c531af6943af58e662299038d5905ba218107e19826e732298881024f0a56aa2
Date: Sun, 07 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704620296
