Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F9F15B7
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 01:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B3DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 01:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677114245;
	bh=IcsODF4ZY6tu92cRL2pPSkrbXFASu9Ar9bAMNdQQ8Uc=;
	h=To:Subject:From:Date:From;
	b=V2PcQP6NOoPRB3vhWmBJj5icT4Bn9FOuR5FcUrfHh03JHklf5VpVyoqC14YutpIyJ
	 3+6HXE7Cu71iX6ya09kVBujptHX4VgI7+G7BrCGc0afJCVXnVPgeadliGWe9lljkk0
	 Q2zemkgxhiOGM5m7bp6tzJElszYF6akUB9TOXhtODNyks/C35bHvxaBsd3AOITfnTr
	 lBvumnM32MripSfH5AcqyjGDBwFE3xRimEJvz9dOJ/Et4539C6/X9H1f7l4DqDT1f3
	 //HmXW5/N2as8SFieSAdHYQSfjfyF1IXmXlYf/D2JDvnBssHTr7RoF9Ck7xFdpBaV3
	 KBRQSzP92M1DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6591C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 01:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167711424580.31499.17137918207919813618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efeb53999014307c13f3f92e002112527783500cda3e1ef1d73004e9fcf9b4eb
Date: Thu, 23 Feb 2023 01:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677114245
