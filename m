Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF06632
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846F7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671325287;
	bh=h/SQy90/mqjpvFdclrnM/jgXMM+w85p+7XOKD7y/J64=;
	h=To:Subject:From:Date:From;
	b=eWNIQyqKbfw6piYQnHcfq6ASk2FIZBRqKQyOyM8QHapptc1Ckz38xF6IzJuPracnn
	 X/P7Nw69cafExdRRrzqnal1aJZ3gR+txJWMWPFxMtu3vCCnWw5ogCt0GJgeCTug637
	 Iv6v6j0keoHxCByiB1PxICXlh+kEU/JzFUjKG9Q8E/aRRyW+6unqfAkW/2YJiwraqc
	 /amO/g8EX6x/2Uw5NiR1O2+fBYzyGm9HNSCn4Ox10FV3MKZ33JN/bku0po/FyOghZa
	 pd1EmhWvYW4CdAEoKUX/Yfst6jzpp2SV3MMyFyPP86NlksqJqBL0C8F9S/mueQ8925
	 n4daq++q2H2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FB7C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132528739.21784.10805080902010832008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f2f5d906c6bd1afa7e6325ae6e87a065ba7aa22c65a1ceee78dfddf6a65f16
Date: Sun, 18 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671325287
