Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC72315C2
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B5B9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666283453;
	bh=k3/b4Ae+3BGWVDylR9AJb8m/ItIqpfjpIbvBMkSOchU=;
	h=To:Subject:From:Date:From;
	b=GRW4FeX4sTK0wzqstdl20uEUX71o+g2vdIOp1COo+QvxRQR2+xc6b1fEZvIeaHo9K
	 EfkypmiBqcJeNuUAqGJjV+w8lMxMZgBooZSlE6UPrS7g5vcyxCucoa++IfYYtqq3xJ
	 Ux412nmTPBEnSCaQqxjMvf1NiDZn/homR1vwOzL3loVyGFrluXpxctSKxpBVUk5XXR
	 R8lEdbkW/fD6w20GcjE6kEgiF/0yFoK5f5OHvPz+gRkaoHVMY1sDBFa+9E9u7lodEc
	 dqwvAXqi+kFaymdtLuI+bULDEq73J+izw548b7qkqqSQwnnzzHlqH30yJVNT43pkvY
	 NDF46LsSI65Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F073C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628345338.27567.18137581283986463573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3119f75778887626b2def952ceb8eba46ad3e12c6f5527d9d876c194244f583
Date: Thu, 20 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666283453
