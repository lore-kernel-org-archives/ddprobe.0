Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566462E0D4
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AEEC433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686863948;
	bh=WCxwW+Q7u/d5wHTLF/UMQXUDx5EUdelvwZUA4Pc392Y=;
	h=To:Subject:From:Date:From;
	b=GqzWAPYPpcLugU+EpolNlkwZzyqDozGPKDbNdv5o6CNmMyswOZ4szF3P3kW7sbUeZ
	 /Yep2hzPL3l5liGbI7z8/8QhlPEjsdSKDcyfGyZxtLXDphauqCmJvJaRPoELA9is4X
	 2d4dYRiA3FaDRkyl06OtWfin3MH1CF63jyX1WPOFfTehFm1uJHm11gPV5P1VhoVzqu
	 glSwSDrbwH+jKid4/QVDtwuQqv2wiTuvc3+rzzQx5hWp6XevxqtDhxcHDFefUmKXwO
	 C+ULVVn36xghdsW7qa8UCChwiKe1QcJui5j/wNNgWF+Ar/V3WLZHexTM2mXfXfgyLN
	 wxCjYMVpHZ8Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD40EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 21:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168686394869.29463.5224628765927941081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5eb81ad7dae45f56fb625b9d9bb0b35e64aaac0bbaa5ce371278f926536f279
Date: Thu, 15 Jun 2023 21:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686863948
