Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF0617CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1E7C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665556853;
	bh=e94cU9Uqf2zMCwgzACOqkOMPA5eVua7qYcic9U5G050=;
	h=To:Subject:From:Date:From;
	b=ICyglnfkcIWyWbLp4zjOrTn4CSffD4/f7zBfoVjRzS+i+ohIqXK+d3vEL8+hMVuno
	 GgFr/sg66RsuuYaeuozT0mq874UdOaqHbjxe+pZK2doj5d4Ohxu+rJRC732L9XtuVt
	 0PTIXRZWryios2oofTgfrVxpk8r6TiOAUsBe4PqQTCbVAmaCJbPk/HLOsRYnme4kf6
	 Q4jx6HnXuG8cHr5FyqdpXgmLwbfxgm+dAZ8K8DDOYyADgtXk9TdAYmgFfacesmOcza
	 gDiFtPzDQ4w3Jj3bnYPNhV3oMlYHC9auxLWXTb1rqVYOJmsDIIaWIlLRsw7m0qjoJu
	 qf9dc51PjqPkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5717AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555685334.26225.13532845516342288594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366191ae9da0511b8be57d475e3b514038d7502766d9ed0d98628b10c012dd58
Date: Wed, 12 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665556853
