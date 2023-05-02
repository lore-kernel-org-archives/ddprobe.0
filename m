Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CA6A45
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 09:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF266C4339C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 09:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683019566;
	bh=PMq5Hr4fyjshfe+oqzbB77mK/JDt18euoHCSfILkdNM=;
	h=To:Subject:From:Date:From;
	b=IrqvnPoSW4/FlFmKr5hEjn8AQtfk9llonZEtOfKct/9BoRC758cXoVU6MUR4gJvpG
	 Dmze45P1HAhpLqkgnrnRK5CFGlWHL3mSuPVU4XwnEYPNyjkbr5074gIRrcznhcHQkW
	 qJfdQ9NSgspoLOFtPHU2fNeSlwycoyKguvBR6w4lN207QY/hLGhEkxmbvOPdYIl2yE
	 bU+/87uHUEOYlmmnNY1uZSUNvQiQLo2kU2Hb6Q1nahVtJDgsGP/m7RqXGAeutxs7z8
	 p8L8e8TBkgTxZ0Lw1pT2uw41GimErLh2uFN7ETdIxZZdHPX82BQkrzYagW4/Eu3F17
	 cOgmQNTAS7NZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBBDC77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 09:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168301956581.19974.9180594634740628420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60a772d5c7dfd53e66ce6bbddfdb0bdfd75ced0e311fd542102afec8efee8d6
Date: Tue, 02 May 2023 09:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683019565
