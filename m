Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EA628E7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D4B5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665600053;
	bh=Dax8jgmC5rjpGnCAjbFIn1SMhXR9Eme13Rf/1HZEDbo=;
	h=To:Subject:From:Date:From;
	b=SUeWkP+TKUBAspXbHcqfsDGHpbcgiHMRrnFYhB83gmvAkOowGJRGcHzyROXt2+yvv
	 obZq8VR2BPipz8cTVHWt0AfqrFP+qpes+XoOrGKIWZSFJGdqGw8BcQ2Y1CzdTpafgF
	 fqA6Evs0bTpC1AV8LRXz/M8/HZBlJR5oJIa4VcOtTsJm4DbP+b0hSAfA0zjDz6ghFR
	 mgDDu6Plu4AS3dMjuNJvbtrWh2EhTFNCguC9J+KsXO3bt93m3hT3IU4h8E/cJL6n5O
	 n+JnqmqisiC46SEb9fUhBIeVb/4H2w71ieuDgNYKKzeycR9Y++6rgDlpU624QUfnOm
	 d6+GAZU6f+FKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BE4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166560005333.3279.4098815837609194790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d6802bcd3e1048456331b42036aa1eca1d54e5d6eba8416476cc83b64fcc7d
Date: Wed, 12 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665600053
