Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6D67B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79491C433D7
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668323454;
	bh=HaZBq0f/3YcBm8uzbPv9MBNTUlhHhqPYyaEv+oS+SaM=;
	h=To:Subject:From:Date:From;
	b=ct0Y4/9orWnbt/OBwoCsAe5UqYQ4TrCUh0YbXu2/jIJcRhH318GAwLZaR20Jn2B+A
	 9TfyUr25ktC2yKPJwIU2r0ed+CBmGicHrxfq5x5s97u6WSscY5cD///c1NC533khwc
	 i+0+CTADTnWc17Gp0tIkMbU8X5fBX5d0D7E+0nBasMzt1/hJmUyL6FwaNXfsXlWiZd
	 gz2mxcHW+ceZ15zNh/pP+Z0Slapmh5/41QeaxGEqlGaxwHci4fKZN7+7BIOtRDQozc
	 zv8gcMiy959ynXt4Z9bH2skdrowuJGQL1lQASret4cYaw/BL7y1IB81CrNLSBcNvZM
	 L0GobtsN499lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608D6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832345434.7737.1800819339418806435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76a7211805b2f67925d909c90ea04d9ea6cac592301a8471e4e88a969a905f8
Date: Sun, 13 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668323454
