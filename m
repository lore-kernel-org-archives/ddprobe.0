Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AC97B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788D6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672975287;
	bh=9BsAB4uiPcDUXenkMwDg2mYjY9/rKAkX6DtXBkocLZ4=;
	h=To:Subject:From:Date:From;
	b=EQUw6SM7NMtTq6GYkQRdNGw69pg0aH4WJYpZaNp1VmB2lQhijgh4beu38xjLfOUUJ
	 2NDT8oyWo41HOApm22/4+laSAQwpPPr+zclXWOrr0RO6rDoRM+c9eL1fMA8PM9qw3L
	 ehl2J1VcPEWsNz0H/DLGKAw5LJVQbns/LfYakalkY+RN1GPG72okcVXfxk5xL4CFuF
	 xpMR6Y/qwAFR7Uan8CKURdVpG50hTQ46tAj/8/LYPywkUFfcMKLX6VcVYn/R6TZzm9
	 kCZCRiNxKGWiLrYa3baoyaLL8luI3UL1U3RTkO4ocgzpYtPrc7qZ+IBR4kcqAR0SRX
	 c736Z1GDRCfdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB67C4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297528737.11112.77432725010448846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de1e97736689a46522dc276408fd8ae1424ad30b644d29356237ad89645e665
Date: Fri, 06 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672975287
