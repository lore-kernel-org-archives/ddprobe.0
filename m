Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAC7A32
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 08:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC77C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 08:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677660365;
	bh=7dZwgolI3ZVKH86jtMumQM3JbxLwJ5dgpgW2O1o8s1g=;
	h=To:Subject:From:Date:From;
	b=dmpP5TzvZiU5Sg6KIUBWom+fofB4nC6s9K734dC2ZlavO0J0J54HJ9dFxCy3U3wh/
	 wMR1TU1is9oYHBMZOdlDGohgXBcr90F7uZpNBB34HbCP1nwIZfjk0VriSP1CAEPTAq
	 EP0XLyFImoI7u5BpJw8KDMF0i6w9G8ssFeltjWbbNK0AUYB48rNG+0R9kOZZwfACX8
	 1zDvsfyvTEfPXQQ/op/Mpm3F1Uhmk17D25XgmdgaG+8AT1quUBeXhuVU3tdSn5MnCw
	 IwNXX+lpc+mZP74yujcgzc6TSMsvZBDuOlVTEe8Y89Scb4YMNP9lV4sAOhNKiGIf5A
	 hQUCq2KQqECwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45A1C64ED6
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 08:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167766036572.16479.2034044644189929832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 806c458a2e0286f54f51c1e970eae0c3dd63d34717e5ceca654eb96fe5d03d23
Date: Wed, 01 Mar 2023 08:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677660365
