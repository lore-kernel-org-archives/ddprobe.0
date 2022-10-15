Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD72436A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7312AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665837653;
	bh=Cy+UzmT+t/49OlVUGEM5/QMCfAvRKG4Ik7dqpzLcAxw=;
	h=To:Subject:From:Date:From;
	b=BR/NxGYubMTLr/FM+C3Hn0FwBXqYIthQn+Cu/sNd3GRRennUB4+o9z42O9oNPm0oI
	 TiAzbW0yE46GEZ7D28EnoFoE+kZytN0udeg0dghtpEfN4k7AWbXU2h1qrzkpnxY71i
	 +xmSUOcgqjPjl5Li+orJT8s6dzm9IpV3nbpOJZBoyL0J40rfZ2OtDzme/di4DaOKDx
	 XZQlg+V06Y9yegqPuXGlTw1ShcGClvKRXsZvwuP9vJw98oG+f2KBUvHVdDbjrKkf40
	 AHGduHZYyTtCBkVg4esBUvnWIOewBl3k4eVGdYTJOHvmBXmLH4BD4Z5vrp20TeVwlc
	 9fMvD1KarONIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 568CEC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583765333.27847.204023396385829944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf39b8dba98e97e3114ec077194344d09ac283cd4716f6ee797522edde86828a
Date: Sat, 15 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665837653
