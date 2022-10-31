Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2380443D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F2CC433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667254254;
	bh=hlmauoJnSCb9Yv5YG0+jMJGWNeaUJdh/B93zSjFyGVY=;
	h=To:Subject:From:Date:From;
	b=sci9KzEDw+r51ZT38gAHuVwzOiKsrmM2yFKaUntv4I8/8Av5YtemuOp8qKyvz5NIn
	 8n9sW+V/hgslwp8s8Kk1bgu7Eu6DaamfB1lSOXZ1v0er9SHgMCghFIqWZIstIv54Ld
	 mkElo+7yiB6rhd5z/6Z96golMNusRyyTh0QI3DVB39sl8GxKME5k2OmVE5/rYS4qX9
	 RBNHXjY+srd1hQTDjka/yJCanS4GMdrCmZsLCvekNpaV4En2lGjgbb1BNP1qmR3SMi
	 /+/TfLT64Ku56HAIZiTQ7Cdlm/UMFJaqg24aFcI4Bf4+bjPtQOvUI3hhb6yRK7o7FT
	 UniDG/MeYIScg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F5CFA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166725425433.31255.12416557162837922382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3c0c50a7b24fe842fa4f29101465ac1b7ce87d3f01bb085bed7bebe9ca6479
Date: Mon, 31 Oct 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667254254
