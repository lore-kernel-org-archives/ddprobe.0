Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C1746A9
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691DCC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666889454;
	bh=PbM1c0GqbpOym3k7Df6T/FceebGD3KKkWZugOcd+Tes=;
	h=To:Subject:From:Date:From;
	b=uYLSlCupz5iZbbst3uc00cjha35Fl5XLnCkqEM+ueGk2kA92ozeZ3Na7tBdTt2N5H
	 D+1xLAqNHZuiyccQFfMHC/zye4rCPq1wJiGboxRIQ6rsu8HteKqv4vzT2kL6ISF2SN
	 +GLVHDPik1XVe2ym8erYMsb3A/MI9PtnP08pakV8hFcT/sJEXZ+CQYGxURnKfQiBJ0
	 Zb+4Zelml5qhUItXfJS4xIKQQDUfpPqzFHielJXIMs2B9IjPEWk7EdY32o06C+PigX
	 LVTZX+RTXQSJiiADIxRmnbl63epkjhD8pHbBw64x+ua40/kel+3TMmM6Lvw8XJnEPE
	 14a/Q4tPyBELA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D30FA3741
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688945432.10306.8465772084048425007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a7230d91ec826d300cc1495a6def22644e5aad46ea67411d41cb5fa71b91a5
Date: Thu, 27 Oct 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666889454
