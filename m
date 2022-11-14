Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5DD1864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D237C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668406854;
	bh=Rbeb0N8+/Qs8fCVm9dhcPStHDuEkK0UYS+lCvLjeI9E=;
	h=To:Subject:From:Date:From;
	b=R02d8Rn7q4cNVz6Ajpjk9Vvx8vOH9hO7yQNR4o6g50h/AiWeBBrjuL3qoBnPSm9Gi
	 rYOwSLUTfZVgaJwxrBKSteB+vVoV7CL7meh01j+L6ZMPzUexkKrCvhxxUBIVhQGKU8
	 Lnor1XiH9Hh9nQqVh5y+RV/dyZzPo8XmpG2PW0XRux8PwgpUT3JQRDrS4op3aHFcql
	 WFLCOAHrB2XaN4WrKyaQR1duua2uBujLXJHRGGb2rIKMSL3HkeJvi4mejHz385k0D0
	 9HB1WGIE0Mh+OBypPjWvx/Rg5Jc0HGqht/bCvrdrYQL2Un0yGLLxlAVfg7pzqotsIS
	 C7OopZD4WL9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BF4C433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840685432.29735.6697849757463893980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c2fb797ce2468ed1340e0a03bf4926953852870cb65e7ff08109d08813a7e3
Date: Mon, 14 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668406854
