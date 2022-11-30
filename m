Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF63A46D
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0E0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669840854;
	bh=L3Nb96tzSNZLweJbppqoqX5T0XK4YFTA7HGNLPLjPAQ=;
	h=To:Subject:From:Date:From;
	b=RnLio5A6v0k8+/aB7kYPusj7dOJRAHzAkey6kkfEHPk1e7OghtuItkFx46GL5XVPI
	 oZTwOxBTALqVzRgoJnaMJ8EFUzldmSuIGN6x6seg6DZ6vtyWnWXdSrsr/qjw4eSngC
	 Dzht4IyM4CP+CqTv3BhWU1nluTpVKBx9fMwSWLGcDoGGvrO9+tv40/ZcfkGHoQiizW
	 d4Bs62GRzWMTYreU/iJ0COvYcfJz6+HZaHjbFQU6ctpozO1Fg4MLEbq6ZaZBzo+bGV
	 JEiktloEqjBJ//67+GjCRV2l0L1czikXU7mFbEK0mw69TzGBcqFkpicaYvrWUPJX+g
	 1Nc8WQ7+PmjCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6156FC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984085435.5699.14497899459888634271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36811b70c0b1ec2a3b6ca3971b5638561bbb167735ddaf46b09f455798761c43
Date: Wed, 30 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669840854
