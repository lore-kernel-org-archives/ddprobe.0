Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C125A5CB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 15:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 107BFC433EF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 15:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685893146;
	bh=SOO8kbzv3jX5URHQ6Vw8LDnrdlOXreYvlHtD+iSx2Hg=;
	h=To:Subject:From:Date:From;
	b=fLjjr/a4VENV+7AJLP7O5+CpZO+yteoVwywpRBUWQkvx8+SSY3uo6LbRS6fs424I7
	 oefTbgQVIx5f/dwPFgOgcvys/bkFRf00ZdSPXwMb9v8C5q9G5nm+91ImKSBaTCZHIm
	 6IIQ5as0uKjAyTy7DVTRCIsr3ZIt2rYHlOieh3MRBkMey35Zu3vgGfU43Ki2fUpaHT
	 YjzqavPnZRuZJdFk1MRJveVSyTKEpbsH5P0LRdaoBKnSQgMEcynQTTRrezkIddU7a3
	 H/8z7rTuOyYMuZb0lYY9JK1805J9G/ICPtIrTezFtDcIypQlJUGt5jRIbkPgW+YgLt
	 6OPGb9d9lby6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7DC1C7EE23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 15:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168589314582.2522.12892450042191882427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69bc2171b546320e708e9c396657824125642a7d5e6dfb5f841d6d18285af9f4
Date: Sun, 04 Jun 2023 15:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685893145
