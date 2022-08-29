Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE4532104
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 786B0C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661749852;
	bh=5qtXiMGfwGhVLLE26UTUfnklmxGTEc3uGl7sLhU4U8c=;
	h=To:Subject:From:Date:From;
	b=bXQFEYFeSzYez87YBMMD4MNxoCTogiaFfseOV2sMtAzgl6+rz/4z4BFyUEeFDgMmg
	 aUxscKyE2Kdpi7CRq4+mqSXUzPgqXxUPO8BKY8/4q+jcAyuNDw7vTmcF/FmADwB0mL
	 X2VDdTEjwPwYmudklWnln/Actta0A9KYyP2G5uKvrvK1SEbsOOeZwgluCNH2sGhkoO
	 R+2YKO6haxGYVfO/7+cSIt7ddMbYpPCY2VqNURUyeeozwFWYKlhqpHQmKSqA0622Jy
	 CAhyHay1p8XIJu2Aaw9LcR21s9BQNTbuVDAQ1ai4VAfwcseBahfII/kLUYZbsziuGc
	 UOvv7aMc8WCkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59769ECAAA2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 05:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174985233.15112.4196501765881361683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c4d1ab9387bfb0e0d3b7df3c5218eeb7aa1b02d8f9727df39c2a241d5b755b
Date: Mon, 29 Aug 2022 05:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661749852
