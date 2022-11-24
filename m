Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA9223AE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F1BAC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669281654;
	bh=iI0Horgx9GOQ3yNcmY2Ftdl39k8x9ZwqDwwuzoAJZiY=;
	h=To:Subject:From:Date:From;
	b=Xcs/UlMmm+ze0JTorO62qyyZ02NI4dtS1ls9283Ghle0qOCcGb5usvz3b/9hY3LJG
	 fTVQl9sdRjm/o1ArBE0H3zNahqFCKVOPxtAtgHJWSPVFVr2n+rjoaOfqy3iU58AIzi
	 yjy90tSmiTy7GnNXZMZbHjlOtIXitTaXSjqnnV1eTVSDzkdUvo/37+WaYm/fzEK+86
	 LmnbZ7E0P5nsKbTWp1K3VB8YR4zh4r27ETryJCLlLM6e+ezzpezdXIQqqwVVoGjocv
	 XuKkkkXmJh3kQcs3HcsqX82pxVfQw2+Lj0GligNpdPsOmZl2XPMMla9dC0egZbJ7On
	 6o2BaOhIsusiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 545C8C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166928165433.28914.1715888095841574369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f44277fb42247a7620cc731757e1a37fb1bae4b8c36125606d09e3fe136f8dc5
Date: Thu, 24 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669281654
