Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E25122BC
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E44C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666996854;
	bh=WSvfdfErqfOI6mklUhxCKZDqH9lxsjrTlNlI4JxEeOc=;
	h=To:Subject:From:Date:From;
	b=TJIN3VS5gIPU+sXteT1r6yknvtU+Bc+j/j54X38jwVTgboM3QCu3vBQNTvLeg1F8D
	 nmWBsr+tD23q1wFryMJ00Xkej5ewGVPGxoU9Wnt//KWGhzCLJ5Obm5wZ/ztFL7eovU
	 Yf3LgDR8yTuRTrUmAb2hE0UKT7RY/LBNtDsUb811iVDs2rhdYvaLOdrUxl6AQ8Qd2m
	 0bNmQNMZT8AvgRDc3bMGB8hVbXEgLGjjroUUxLvGLD4iNyoQDe3brziJcmx9drswdi
	 txwJsjsLU7ry1uDrvhOgnAEa17d9lhvc0+Ih5Eksk7M67KUsOCcQDESKjLmDkepUCO
	 Amt9MsyOobA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA26C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699685436.27698.12836290588244972468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84140f3d44f16611f00e393958ae5c29c8d547f92372b5ea70d702b44206d9c0
Date: Fri, 28 Oct 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666996854
