Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C381A7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 727F5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665732653;
	bh=CfKFs8w9uSRAIf1mKzJ5Sq7NPiMS8cDSaqcS/SsP8Fk=;
	h=To:Subject:From:Date:From;
	b=pLGGGrpCC2Ar7LRq++Q4mYyf6FR2a5i5MNE0DY9fJA/QudHwPv8pM5iHQuEHKJQ3h
	 t2adhvprPqb4Pw/FdmysfzP/bpJ4szgpQVxENU7Oha+X/JCCZPJUevRHD/vdO0fvzS
	 lYDXsBFIolO7D7gFJYdvXbUADt+xkABh222Q4/QK/WNtwFrP07EYVfrDDZ0Mg3TsCp
	 aPPiQccAhJKOeUv1WjfdtD7kHtuiyFInsrQDptZz4b33jyDwFC3TiZf5ZEQS/7XwGs
	 M954EbINu37rN8/t1nNION95QQdTA4zx62tneLPF5VLn/luAvM5UAIgbYlvSV/iDP+
	 NNnlYWukZJPIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541F8C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573265333.27379.16223747151262700191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a015bed1e451e008abb9fbc0e1b4e80cd218a522b30ff5260099d0c2ac0d874e
Date: Fri, 14 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665732653
