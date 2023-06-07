Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE2E6FDF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5FCC433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686125525;
	bh=8Dz/k3RM3l7It7rHFSq7qexSFrwYoI9+IKXgDRaKvDY=;
	h=To:Subject:From:Date:From;
	b=Wo/80vpw0CILpa0wMuiK2f9LF8PMa/qNSRF9EdjcfZ31HApoBY7ZQML+SYjwsws+5
	 sDKGeNsoaD6ExxSrtieFkBJ2FVPb48uH/TAJV/wnB2Mdoua0gwr2C+LZyZv2PqVAC3
	 kOD1qa61lKGTIo2CnRYPxyYdEktbHI322/UxQ7nAKSvkwEWDtFh+zb1oifNm8wrv1I
	 GyAIw02Hc7a8Qoh76XaBfL3xU9M/x/7DqrU5x/ndvxalGrjs2GVL4p7TjOmpDvB830
	 kZLRfHXL/XmKUL8v/JNIyttm+BpTdkws/oHpGcN3a34FY7Yj7rQElvBjYB5LeEiY1h
	 Ow2B4c6QDCD0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FF8C7EE29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168612552572.21865.6052563254371072746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdad60695a60beb7227803e016c769d19ff2df676f40188a76e681fe5afa081c
Date: Wed, 07 Jun 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686125525
