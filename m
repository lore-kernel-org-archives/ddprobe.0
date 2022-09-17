Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B957C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73135C433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663399853;
	bh=YGnYVv2QegtwBoqWsKzFRSvup32O3XgAEtcqKliuWUs=;
	h=To:Subject:From:Date:From;
	b=OoO6hdDPNO9Pg+PFj956YRvvWfIf0IzHee6oaZ/PWpa7pKDJ/vhb/avIhYfiM099Y
	 J86XLl6phZM1FxXh1ZsVX+fyFmWffmRw/UProeV6cAFCcEyakBGcac3XfjxgkUI6qR
	 cjhYhGY/Omt802K8D308K+ZJQzodGz+kfEHsg6lzhm3GRGcnl0w2d1uMDUPgEbDPnn
	 IgyZAyz3obrCQ/kp5iRk8bW8IbsGQq+H0AaPQ/lujoY30/kkSzLlMfZP2/0Ihho41y
	 ct0IYGOts43w8tnDxt+TyNbg9Jje6CWTzWP6uzB8djLwS0XLkwx4Iq/RcR1duj4Wmi
	 4toXAJ0NZ6Y8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57190ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166339985334.32297.12495673727165157939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6292d115af1ef601d283bee143904ee5381c7e7ace4a4a918b7a1cd4da5103
Date: Sat, 17 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663399853
