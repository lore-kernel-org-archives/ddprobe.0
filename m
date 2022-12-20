Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90FF4C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1A1C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671551487;
	bh=DldobHuqNWaXOkdIHKeAQB5+hrRLc6S2ru3RayOpldU=;
	h=To:Subject:From:Date:From;
	b=ZlZ5y7rds8iHYkR9SbPHjCIzOiXH+9goebMTMwresl6P95G4sYSf9CyOdiNafP8hM
	 Cj1924tbqVdKK+R7MviocD/hporDqOvoKjEJrFE3ABXza53k3qqxJ3hzlVpNfFyBmb
	 OXKa78+3wWTxoNwrc+sarywbsejDqYJMGqXRO/OdA6qeHi9qSmYLJqd8UP2kE0cKOy
	 uEmoPjVVlYl9vONabNK6xViyUXJ5oZerEeToyxW5Kjr1BTotD22IBB2wbs7+okj7Mk
	 jkTPheLEzXMp5ZSJUYRocB+9YbqIqF4e3VgKk5EIeV93RP0Vat6cYIYpSWklFjVxBl
	 m1GfmvF7/ab6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE92C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155148738.9997.17401631927471960983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8608cb3b98c94983c6b01743c783a61d67661ff990fbca089f15f046d672faac
Date: Tue, 20 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671551487
