Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA921A3C
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C121C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665903653;
	bh=yCt7U7ysO3EgsR3WsD4KtnNGfRM0pbyzllaZ1H7RtmE=;
	h=To:Subject:From:Date:From;
	b=sZlAqwxXM5x6B1pdQqGcIeCYNacLL0RMG+DoWA4igS0PtOk1RC6TAbbKCV1zffW+E
	 0VkUFXQtGvL530Lxa6JFRoP8lODBZHeVm5AZaP6xr8R/dUVrQo5gGBV6s6v1MYax6+
	 bcGhiMoX2h9fvRms2Ao8cDzRus9qrObyAZ1GDR3A/4kv+o7Hnd+C3iEpbbLDAI1MPo
	 1N2nzsceiiixrdeag6KdhzkoBAb+vM8yyzPegYreWpbWrlf9EHZ1HtNmKM415gFcZu
	 8oMk7ZZFb/k6fbxgDsbdm6MRDNomb93/JOoT4PqiiiSlB91+xvu9wKtZoS7b28Lb+f
	 o/xUAlRnAsVnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FEFC433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590365334.18426.858131426126008096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2cfb3a60d6c29ced745851b28d4f4aa8098c151cd57ab77a685efb0d486c62
Date: Sun, 16 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665903653
