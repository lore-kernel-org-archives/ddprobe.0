Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD99663A
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F90DC43140
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665740453;
	bh=yNvZ4G35N0uLstnRGGur90Nxj0GDFsQG/8ljBZmbuzI=;
	h=To:Subject:From:Date:From;
	b=aFCltE+d20ohCc1/xmjE5sisVlYjYZhwaSt3VOcIXKCP4NjaDZ7FvQnz2bxAJ78bS
	 g/xlONZRGbdpzYKM2Nh98z28qtIKHa8mojeMaNNfICfkqWCOdJXDy1ukN1Z66UMvJM
	 nRcF8AmLRgBb4sCKjkuCPi+UqxPfXv/LFhFMJKyLJzcyYc6hzL95uMD1xsztCiI9G1
	 eAO9N09qasxMgU8kC2pupu+66JN5q/wiwlFZUu4wQ4sid+5utymmFrW9G+e6Iirbn+
	 6S8xb4gn2LMZO3xyagrkeP+E/PGDcKxF69nknvYKn1F2bgCBdmYOwNhQVHplmnaKFe
	 I2uAbdllGsxjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5505AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574045333.12814.5551046572589528006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00ed577caa940a99a5c6a63950de134c5e0e1d1f0cf4c3d0abaa351911449f3
Date: Fri, 14 Oct 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665740453
