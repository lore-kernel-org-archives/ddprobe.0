Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4D57E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BD2C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665368453;
	bh=igVaGU/sk7pbfaI+m1eT3vyjXU9AuWl+ljJ0BZ4Nu80=;
	h=To:Subject:From:Date:From;
	b=mp+51xnt/WJWSmEYKQCmBlbIr+BDQeznTQDzoog+yzkhKs9RpvXnm8wgaHY9WHDXq
	 QOO1k/UqhUTOy1FtDAVPFJQXUs9BMQNwPGIwf3ceXLZ7IrKuDLlcKxvy6rHeZ1RrBM
	 Eb3GAaDg7wASiVSv3AZ/DRkX1KCXj/0FSFy7hr9+6ka3Tu0By9Tu//qAwDBz6FGfCZ
	 aCc32sbXbJEcDZHeY99PEs1z9anLWGffWpzMZTPLGUuIFrKC/nvqCzt9BrVUYWaAlW
	 xU8rYJPqwasqaWBe9oIgPzeoyGW+yqbco0V90pcLRue4svQzGhHR+TV0XfV+xyZ9ls
	 KUv8ptHg13HZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4FCC433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536845333.20120.18346098012450635706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5c6431181599b238207936f339fb446295d4baa6113d4154184add4c519cb8
Date: Mon, 10 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665368453
