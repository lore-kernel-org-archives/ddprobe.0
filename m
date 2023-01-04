Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A9B7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82365C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672792287;
	bh=lVKQpPLDl1TJd+titV0R0pI61bgaflvEleVDZ0+MnZo=;
	h=To:Subject:From:Date:From;
	b=f05803h2YeRMp/WcS6m1Qx1RQ9tZFrvtd107hNqPxIYI7+joL5M/N1GfA6idbtKPZ
	 vjA8yLKWXs5lMzVtjAreOH8IMTgm1F5xSZwcePSHAv6fjOTguUhgIA9JjGS0/DyaLV
	 rSrb8uOmVFZtFraQjHatDvKNiN5dKV1Blw4GDyE+moDFchhFJHOMIP5sqh+kmZy/UM
	 XN3ePrCMbB+NHcyuS6bWVoNOCOlZb93Di54+0o9id6rhYmAKEbympAJUCSecasvc4Z
	 i8v6yogAd0pL/hQ3qPAYcltJgedjvdZ/iu1UsEDqlnrGk0NFkrRMPG87VF2MR7KMWs
	 a2L76aSawjCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACC1C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279228742.18130.12802556360473900571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28714838135dda8da3e36fdf502cd9ce53775b0ad7885b280abf4506e06db1b7
Date: Wed, 04 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672792287
