Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A8317FE0
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D4AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689103028;
	bh=N/WZuCJJ0tdQ/Tc0sj666s5ZKK13A3pQQKY76QDVe50=;
	h=To:Subject:From:Date:From;
	b=JTrDaKFlri/yHBMhh8NCPwi1Yo7VpGqLil9Magz1A6CeGdxGwlVAOKfW4+GnZpwEi
	 oIj03rTARR+6ECoka0dFXDiGuZ4kv1ITcd5SA42LNf3rktc4E+noEzDbgVFN04jQGo
	 V2ab9aoDRpNh6G/pRSNVSD+lG0eHO04plDOtZq6WUIvaXSGOyCgCIE7QPShdvCWjVh
	 9SEmKWHTwwt5G9h0Iji3G8gOkaeY6f5IFzvwGOYyR/YCgvUMvWdiUPm1JTOzyr+Mp8
	 BZRfMk8R205hH2YtYwm1tPPXsH0Vf3Zg+Dv4lKgCmZ+a6HCesaHuY5r+xY4yF4qPMb
	 oQDTbMSKISE+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F3EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168910302868.4527.9372381728877835922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8e305102107f80134a39fa53b6bcd7ff45767580b2c5a49ec9adf8020c10a6
Date: Tue, 11 Jul 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689103028
