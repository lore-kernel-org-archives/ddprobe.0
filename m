Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA87800
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5ACC433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666668654;
	bh=RQ2pblUhTnRtbZ70Sh84iRNVStnwmx8AEQVACrtHSm0=;
	h=To:Subject:From:Date:From;
	b=JSbtR5BCUjsGJ7hEPSwsOTn+culIBRZ5PTskvMwpIk1C651wzwj/QqttlCH4cKTj4
	 gB9bO01+A1msnr7hY4VLlXLihiJOcOaQbqbgPQuC4SLAyLcrBvy9b6atYESmChTLCG
	 MWckA1XmgXozevYKNcA8elfmxAR9UXdvLJ+M7ecZUs2muLScS/Unc0XNhig9pfg71F
	 kqgBbnxt++oLNQXz/WGwkx/h52WvYk0uqdfb956yLqWqQKeVBbowo6x9PTSpzhLmJy
	 myeF6Gt4pQ4q7Scv3hBgI2M30fkD02twqRjUxpP3j4iaiJpM+qg0M53r+suVCTe/mt
	 nLcIuWdXUkSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A99C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666865334.1258.8818747808107774296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ccb596aa7b14ce0def5910fa425f5652e72e5ea5139ab54113342909c5ad22
Date: Tue, 25 Oct 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666668653
