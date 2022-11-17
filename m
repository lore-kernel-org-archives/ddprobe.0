Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA832A464
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA5BC433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668728454;
	bh=k08RtC1PFaPrpV2tSjVEsNLuZEc/hmtAqdKl8b9VBZE=;
	h=To:Subject:From:Date:From;
	b=tkBlmkWOsLAJ0oOb0zcK3w92mqMUNCUrMkHJ1v7v9pI0wMvWcsRsOeBtoFiajYszO
	 j87W7LNniRqDWSneg2tbY7LBJfnVVqzhYXYkoNw0KB2aMJxSU+rdc/sg4hk5GvQkp1
	 s1sfr5JmbWdYb9aCM05FYmgoLy91XdR6UVaAaRxTFt2M4aFrLGNngqvQlXYAq02mFp
	 vTSH9HsQa7Ui+ZEg8G8lqu2cFRBSuo88XBip+JNwaAIfuwAhwc8MqhfqCxaLrtVIye
	 v+e1Mnfl7SB24F1If3lq1DDvdC4q3cY9DgaxHNruf4IokO+PzsbLt3pPpIGaUHSvD6
	 MuLrOxhLN7Gag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56302C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166872845432.20323.6657749951601907114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4f91b2cc1d0e10b2c45b8c3905a1725ee432fa89c23aa3d0cf1e807410b6530
Date: Thu, 17 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668728454
