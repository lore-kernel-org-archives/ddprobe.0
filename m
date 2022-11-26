Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADD9023A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698C3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669480854;
	bh=Bx1znj83mmvJ2ZpCp577azXPN1soO+eOOYufiw4Zac0=;
	h=To:Subject:From:Date:From;
	b=dPKWpHoSqwetq5UtFpRZtJaSeuSx+hW7C7gJjvnTMBAWa88LZKdzR7K/KZuHz22s4
	 R3UUMSqu/JJH13IPCipYNrXAwvNpPTwOL3R09cG2Jux/xyj+prYetcZqExFMbileNI
	 Ice+iYsIsF61VeEJfUSvFQD8S08zhtK2HSbmFU+rzhVK3AXM8VNSlK1tMGrQTX2iha
	 IOphvz719uW+6CvRFILWgBKlsW4Yy/ZT9195DtDhSV9N69DTlOHgmqc4pZ5+pRYVFV
	 Kegvl0Jz948gO5MMWMKqvrlc5x8j6LCsInZ97gEQ3qS/XFRobVjYcv2S7cBVxZYam9
	 jSrvn+dRTs9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2DDC4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948085431.17617.7284395512193654351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822e6c8212ee4516c47c02272d0ff0d96dab399019b3686560e140a201bb8d38
Date: Sat, 26 Nov 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669480854
