Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD64E7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 796FBC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662514253;
	bh=mZuAVhYnAzegcVifFFUIU/BPYoJ6thdcH8kd4shVt4c=;
	h=To:Subject:From:Date:From;
	b=JZexjEmAMsiGZRHcVSobTXIuNlcd6s/znvByL1azlolwwcAqi0GEO04W0yB3UuziJ
	 TCvkN+mf8FBhXYuevERS388nJ+WNbzKgKZaO0G4CCpn+WEhLwKSy6gi0HStYPjcBs/
	 uJD8WzYChBEkvBDdAggzNO7sZ6Vb/R100qhjml13oMp9l8d1V8Xu+vgLfcwUxvxqqQ
	 vAQuxJOmvsm9eGE0AkbypgExdg1bRVbaBBRj7bQEItnIBSFnOJ/vgtmanrF05dAK7X
	 KG9san4Rf3svSt39e4xPk9gHwogXfiFSZxQlapOGLQcrGFHVQwe3IIoSF536lt0y4Q
	 6xg4JGUzZDHxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4E4ECAAD5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251425332.16808.6260830985633447483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7399a4589ed6d2807a92b4312737df035d23afc5fad4c97e72ff11bd707605
Date: Wed, 07 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662514253
