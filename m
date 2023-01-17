Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6FD23A8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C20C433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673958087;
	bh=lygd10Axkbc1ImAdC6mE0NsTZ7gmk/FYQZt/HmlyEQQ=;
	h=To:Subject:From:Date:From;
	b=gmIf4k3Sew+33KcED9xN111LJSSHYbhi5ubUlhL6eQWoCX0LLVpryrfas6ZJ4R9Zb
	 miH0Rx7Umr3bYLLGiCU5nl3GBhfQ3SKW01XA6Z2qd4kIFSvnmP8UvjeNcRSQQ0yE1f
	 tbNQl92w+TdXprM9wtuGtSU8mIC2mVyWzm8+fBU2ve5iAB+FugBy3XTMEWF7B/Afrt
	 zELwOWymk4cQdm2m1tInsDEVRrFOPxMUcfs5+ea7xQr8jnH36e0kAYALOC5NLX8WZI
	 a0JaeLCRQM58fbC6Yan6nD4bvr77XD43cRafXxlwzrDU0sFLeP4zILj6t4o7ko7Ehe
	 3flrLoXji7Ecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A9CFC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167395808747.3859.13372752943297345110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7040cc30c593e8685b45722fb58bdd18aa3d44b3cf9d140fb595d4edfcd9fe1
Date: Tue, 17 Jan 2023 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673958087
