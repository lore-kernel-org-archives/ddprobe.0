Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45967F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 686B2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662914453;
	bh=poGUkkn8cGAW2G00nnNa53cSblOOZDQjhSIBaDhc8d4=;
	h=To:Subject:From:Date:From;
	b=hilasr01JhMkABXhVx7uMiCmhwrA8zjWe68bR3EbsAEBkVaZJO3TxJX/vC83O5PEP
	 b9mnak351N47uYqKdSoKlgBQzp2UWM4HC7fdfQGM2V1Ulr3XAYc+KFl3jIOvYMwLd3
	 GApYTRa8ygTWM2WUqv4LmincdFIVwYcXhdciLNZBAmynPEHEjZ5W+lhqN7ix9Ifrih
	 3oAj3uAYhla4gXb/BDjgmc0G332vis4+C8KqH+ddI3olrjPslPSdVhRSLfZEtZ7wmE
	 HvaecgBL/icEhi+s6Zn+nYtblTH3TTYC6ZWGDpMZR81JQtbpGaDw2BbRSFaYqRfimj
	 m8vIOOBJ1jBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53549ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291445333.5812.454393197743826431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042b4c31f7bcf2cd8b9a62575009c47243b1aa09ee964bc45fde7306b15a1cef
Date: Sun, 11 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662914453
