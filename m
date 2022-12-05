Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C303323A2
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C3CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670235054;
	bh=Wnvrdn+UIeD/rQExT3/qnHIl9Kkdk7l3yPfgms/raRc=;
	h=To:Subject:From:Date:From;
	b=YUNVSVjtO0/Pct/3IiLsR3iKThREJXE+F8fIMUJvF3EkSZpKk8Ui026bv0ugLOo0+
	 k7Gn52CUP3jV20N1P5LCB2mv36xs8jGWeIpaLnog/Nk98QIbardr4+gTGOustJNO81
	 AdAgThrMYfaaFOXbmWsmTqrAg5a7031kKaiI2X6SkchCJkmOYPBx/t5WAvQUdg/QHl
	 MrtlP/X3hnls5qv8juyLOG5w7UVaOE78IAT+akOLXrkJCQWN2zZRAt+UM3KPALJTX1
	 RsupXR/FJ+69eSmXz7E2LEYajCiUmuJmMevH99/YhsuDGO5mxrDYAJOhjsoTJbkmXp
	 G9GX9x8Ig6T9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56781C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023505434.4632.6678426099628717580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a02606f61ce28263c80fead063e1d989642018508765cbe0270aae1c9c5756a
Date: Mon, 05 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670235054
