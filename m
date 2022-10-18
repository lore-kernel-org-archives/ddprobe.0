Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81867F
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F615C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666071653;
	bh=0pwvV0ISxTaO5IfMEvtog6cImKoHodYyIVlRMaUUV4o=;
	h=To:Subject:From:Date:From;
	b=OziLvOYhca12Kdi7v3NuNUy63sAelP38bdRT8+8YgyUECGdqJkJsoc0pzNjMX15sq
	 aZ6smt2MLivvenhUNLdF+T9Sr+3waYGbYln02+/RruQ/2/aRa8O53HIQk4LNPr0N9l
	 Ff24fKAkuNEIOiuhIlureFA05JyZY/tv/u/XkLf64mDHhOkk0VI//QFJ4KNayXaGei
	 p3FvWqzyyrzcZDKWSoYu3LfO0sEpJ1Yed/Cj01lDQKJVN7eMLB0zSc4pqij14QjCWR
	 szYyimeoO0/btBbLFnjvpY5dzZuGxA62+M6baPBLEcDbjY0E/QWm7epehaXPv/GRBM
	 aP9RgE5Nbgc+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5295FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607165333.8168.261086159004205669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c719408a87b70f16f922922ad84b0f5bebae7e3d3578cdc847cc2ae9ec8c34b
Date: Tue, 18 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666071653
