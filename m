Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE05441F
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69F89C433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666467653;
	bh=UCT0oxCvltiQp+FXTCjT6hHTIRJBx81vK/2OdufQ7Pg=;
	h=To:Subject:From:Date:From;
	b=GUdaQRLAMsTrdXhulTUGOBmFdC2FndvweWb/VodY3CViTyNfFYTzJ7DFQtM7QwDAu
	 dxej1DbVcaZJrU16WfigSOGOUAwDB7b4yU2ru1yvXPvReRKQm5Pe4WJciGbL/D0b9F
	 PgSzPdZJTs/P4BSzCyIwnrF//d5dgk4kfPJwiywMeH83lrWASGZeE49jfMNoSx7Gqz
	 yM3XuSAe8NqcapXYJro2m9S9tfeQ8IULDxSGIYhNIyNsOTROiqytyzCOUdeZOGBbv5
	 PhENUPv9mejcS4zSd+o5SGhcobI3w93YqYanq+FOlaWM594ncAqdKaNspOrQ8ax22T
	 GXtB5SwvbOZXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528ADC433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646765332.21975.16988212746960511611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4b094b20f474b03420ebb5ea1d9dea0a88c1d82944e8ad1494267aa4a1eb6f
Date: Sat, 22 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666467653
