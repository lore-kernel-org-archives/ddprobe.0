Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D497C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 867F4C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662621053;
	bh=QsLIjOWEQJt7LcVdlzyTiNstFkPYbGoM7qeAM1rJhyQ=;
	h=To:Subject:From:Date:From;
	b=JaWOEfZoC9dMRT7qBoL1da55QUYNT3oZjYmHCJ5ZASx80PR/r5xjul6ZsGCWZMTDP
	 P6PbdTjniPJN+/0OUsr8jxnPqnS0tueuImxXg93opsshoXF4Up1gjXw7NR24uZr1qV
	 2VGwmbbAX5MCgDKa56ry8DZ8qEBdSilXCQ/9Em0pfgZ9PNXVj/tdhiYakRk3sTa5d+
	 aZ33HR+LSYbhmxmAr3VN3QR7ExR6/OgK0cQOfrY3yll8V997XgYug9OKV7qODoq5eb
	 D2qjirXRa+alLZIAaF/qvdbUZtKGm5zp+Cq2k4gT8/3/MTrgpfKL/ZkgApEnWyu86r
	 02RTKkPLN00Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66995ECAAD5
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262105337.10866.3255316760749244104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce30249af502e31c7bb2ae4bb4203fbaa98f7816c91647be139493f5efc6877
Date: Thu, 08 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662621053
