Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0F32F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F972C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671406887;
	bh=iQ8Ch1EptucA8WM4idGYFPiOMvClWTqI5yFZaXnpPz8=;
	h=To:Subject:From:Date:From;
	b=OnoZKhr8oqI/5K+Q6lrlbSAXXXrO9oFbMoqLrW2ngCZEn286a45Fd4X9bjktXQk9T
	 CGOwzocN0eAmJeXiaxkIk/dCu8lxGNw5QQWu72yfGVe3FhEywXt3WOzla1i6NgvvBM
	 BrtO3ipvGEzf71+RueLPD0yQu9RzERBkEtC8Mvdqe6MD5kMpeORn+gNJ4LWlt+msk1
	 oMysEs409KiUpN5P/Nrnj6OKICovxLfAPy553Pv/bpHs0pYkidQgjNvmY5SLB3xOby
	 8rQ3KzRfPICRtbHVqti7F4X3Ec/oomEHHq1LfuxMUjgIWfuuzd5tinnbrv6TNaUENm
	 m6akmFabnrtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E27C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140688740.6033.11379569384628474968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ed4f262c1f63002f359eeca4d0c5dbd2b04593d6f513d86f1a71c0746961d4
Date: Sun, 18 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671406887
