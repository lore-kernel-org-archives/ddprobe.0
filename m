Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A818C10941
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0579FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688407569;
	bh=3ZhnrPIeXCJls+I5yrdEcRwLOI3qEwp3/4+XnXZG4+0=;
	h=To:Subject:From:Date:From;
	b=Xe8T1pa5ecbIDBu+Csdpf2QYQtVELuWGdn5CBxu1RA8AMx7t6hdkd7sO7rga1eh/I
	 PhSvNUtSUSTFqJZ1EO0noiLGWc8RhWVkA5URbsj6dHXnDd224GOD3rcjbA6QCK8vy1
	 YtM6LxVQ/B3d4vKPAT0gdPB8I9ge7XOxZZWTTeD/3SKsojLLafTFr2htybRrfQAtKA
	 yKSmRTadN87PGG5aBAIGolSBGVEODF7TluJGWuxSwQGbeqibZBwItKwcniIqp3djGK
	 iUYesDZSRImCaQwH8cBJHARZ4z+F8+8oaSsGYPoUfq2jm8rgKc3GNiguNMtk/OYMDh
	 quy5XRHSPT8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB861C001B0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168840756888.30687.5693369013491350189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c4ff3738bc90cd0bc46ce1894c712b745f6a865bb1ef3b1b15bb9ea2852e75
Date: Mon, 03 Jul 2023 18:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688407568
