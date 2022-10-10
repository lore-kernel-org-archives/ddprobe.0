Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3192903
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680BCC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665406853;
	bh=mvBa/0wb1cXSwKyPfPn/bDT2BB+P7eNJk7wfKt50SAo=;
	h=To:Subject:From:Date:From;
	b=YX9RQR9xYaraU3+LoD5zgM5ExvuDidpLpnM6pDT1pwYVBL2ZJ+Rrq1EHkgeXNPcSd
	 OjD9T2QmeIBkFogIjaF0JVA7asKMQHUVBNcODTWAONS1r+8oc5/ounMil5640BG2FX
	 uGUckVjQT0nl3UQoECpKztONxCClJIBSd3a3qzkLevS+Y0iD2CpcVY9p5BuyqkpmBr
	 UU6jxztT7GdTbZ6tbONanjUTE3iv5FeXvW50Fa0kYFPh2brEgZFOR4dP1dsTI03HwO
	 QGGUzPHzu2HxyuREtae6Ojyubf93QYbTkP9KKmOs3NT8JkW9k1m8rBZIDSssAcdKVY
	 dyeD55nO/CVQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50691C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166540685332.15533.2779089760726426252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fb3b716a1b04b53196ef19cd9f06fb342830a233bb8ec250906529a0799c61
Date: Mon, 10 Oct 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665406853
