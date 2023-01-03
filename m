Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4E65138D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B920C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672734087;
	bh=G+R2yQQjcyp12ljPx+vWPcL4K7ko5kROoe/KNJRZ9Bc=;
	h=To:Subject:From:Date:From;
	b=ciKQ/KfetqgjMdgwonmTd/0EFUEgs88MzDupjUDDR0tjDepnMuY11eG7zvadpD4di
	 VS/XP+xNViakm0uXuXGR7RerJFNQtzaXKA3KNSPasQHXuRaC9V3HWy6pVaIgyHzfdn
	 d2W+WeMQ4u8DiAUvsB0iyqghGXP69ZGmAGqEvCm8KCW4t3FKwsmNMSnMX6L/eve5/6
	 xOqC1EkDnapbJefeDSzAeva1VVSMY945oOnQ7zegVoqm/kGo5W/cVupeIv7xUVDhJ9
	 +bvHn3hz68D5ZyX3cPwHloOJVqZpPHXZdtZ6qgvWa2TpOYaojWqstQS1cEhBaLhW6g
	 b/9ncwX7IfKvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72182C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167273408745.16018.4119102510871562148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cd0512b30baa3241c6b97cedaa66e6eaf673d7d588d96a9070fb395b32c488
Date: Tue, 03 Jan 2023 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672734087
