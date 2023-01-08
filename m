Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E243C2D
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5ADC433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673220087;
	bh=ZxW2hV69naE3x7Uy4BNtUqDoQDGxvgZtOLuffufjKUs=;
	h=To:Subject:From:Date:From;
	b=JpQ/PGKVbNFbUtr9Fnla2qWFOZqK5DSTEMp4THNVIJKfp/O6XcMAONw9Du/aZavvq
	 ggjdWo9dcDh+/xsgdRJGOHI4qZqZYp+V67i6nd0IZ/MXNtibIbMYhMMJh9jfcQ1zKz
	 8coP+hQKc3IbPMZOTIHd4P/r+IegFAleYE/UUp/TdaUe7lMU6BdhGelxNhSc4+DjA/
	 QVlw5Fg1lMyaAOjNklr7ZYhYOMr1ze7DBhc4sPn5D+4GtUCeV9Nifjsda5HZPwuUGQ
	 kxpinPdIznIRqh39Op3rM8oDW1n+kOgLyLiwFrqJmwUOxEWg6J4MRVbbjnhr5zB4Cf
	 LDFIcjfbVEfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E537C54EBD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167322008749.9455.14454457670559740765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047c0433764ac49cfca5bb1dca4d5a0288113e04820e7dd443632f60c54f3af9
Date: Sun, 08 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673220087
