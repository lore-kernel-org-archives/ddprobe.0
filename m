Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E7979C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C268C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672751487;
	bh=MeAx8lbFuRlgoUaE/HqUJRh1uRI8x0gy16Lymmaj+VA=;
	h=To:Subject:From:Date:From;
	b=nC6v+qo2d29zBD83Pnuk9YOGIJSkFuL3cu2VXkWtDADrzyXz3E6bqVAljHSU+r3oI
	 EM9PVkNlEDheDG1bxA2hm2QgkdP9H369imy8+C7dOhemhhI1v2KoU6m2hAquvJhrEk
	 GyCpH2TOcFtg6euFjKJFe/BAVSJYINlTf0KFsKWWsTdRfN2mpoYzqhKJj+lXQT1B0L
	 HDxfgaRgC1txWqf8sKs7tnoihFjAXvxqq6SNul8aPUEJ5WRqAbRWjB7L5/KtVjiV3I
	 AhM+zVB6ZKVT5TSQeMHb/cI5RTjVhgVqvphCw9y8OjVXg8i10TSPRqs2IWyK0KJUr8
	 ShxwEDnsouPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ECBC46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275148738.11391.14584607414809557382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd07aa08b1e60aebda35abb7f43ab9401b89d62b00ba8f66d59cda117dca079
Date: Tue, 03 Jan 2023 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672751487
