Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD46D256D
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACFCC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665169253;
	bh=kHAwoyGVRhe/lSrXpkgDs9MhZv1HuY6UZ+09TwUYZz4=;
	h=To:Subject:From:Date:From;
	b=Xlacyh02zjRp0Vg/M52wHo7HdvgKoGjaQa3ssiaALlfSWP9I6gomzmMJsRdIyAeoK
	 EJgFCVX+OMlXUc5bEpqpY9duNJvO2gnshAK1o4uu+lfQoGECWqdssRnt1hvTWQVMmN
	 HfdcipQtOrjXM57O26MNCBgxYBGeKn9Ca8jiz6JRzG30phIMDiIVNvUiN4kwFx69Sb
	 igwkzMWd7D+7/n8Giu/1LQ4mWkO3ik0iOiUfiQRxw0xciLJMNxMsMPRMppoxRcEn30
	 jOhDr1Yx09O4qiTVrMeTUVVAIwDjs5k+vfY2Z6u8mOdlf/KRGCt+rx4YT5PQqOa8SG
	 Tjwoq8P6sIjow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58161C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516925335.16425.12241390187197191404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765fa3e53ca779760093ee0c2672d1f8a3232fef71ad62b8e90943babf70b4e3
Date: Fri, 07 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665169253
