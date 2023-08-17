Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D97F1B7EF
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5478C433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692310448;
	bh=kLy0GKTl4Mj4tTDKR4SAcufKG/k2cApzMoMzUiEjM8o=;
	h=To:Subject:From:Date:From;
	b=sgfV39E6j8mhtL5OOiybTYssFdu6ZgMWQkFtSpdweFswd+64NI/WSzK2P508kZ8BE
	 sSazz+vAdueIBTpwz/baqQqYKtl/nUNyHa+PG3UhnYjxgohhnhSkq5uho9hHxa4V2d
	 VhNjF5JSNXCF5tSnoMeveJJgyUqEqmPVB04uPR49YwDb3JNTBtE63QD6tKhpIkEIL3
	 XhvYOsGp4Z09Hfuv2QYUJbAAD6n1PaJQGqLyghM7C66WHoWaFx+t3P/00CIWFfl1FX
	 VFr2vg2lp/VoQHVnwhjKEhU3wuIrSwfGksvmArMw76sn8OZ0K2cwlOD3QaFOPsLfsi
	 w5KyCCywOR4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B727AC678DF
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169231044873.21080.6284713341886813859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b56ff924c4a556a87aaf291716dcf236c52daa437c35fbe251dc7002a6298d
Date: Thu, 17 Aug 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692310448
