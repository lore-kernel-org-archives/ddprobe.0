Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6257B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70245C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668327654;
	bh=yckytM9XG4kRnxz6iR32z7Gd2KS597mdo6sbUk6oH94=;
	h=To:Subject:From:Date:From;
	b=kwxG8nvQIlzJn1wPg6Zh206ySWgjUXt/U1DRd/uRKPiPAlQpwxVxnqwz/OPoeFg47
	 mAR8Vi3HyTHwhdzDjrxauL4zAxGiyste0iY9AF66gagSZA2iUX0aLMERfgaYela5/E
	 KblW0rhUhmxKhmz7shhRljesZy7+Ya+Ow8eAkN9ECu97gA2IsK/KUqb6jBLAfGch3T
	 ql2KMYLFJ/apdqQzsOQ1cJZE1yIz/sqiUlVLG/6zzMoOVuQk3amZMcKAQkDkc6Zcsd
	 77V27g3o5CZmqlrZVGizS8jjx9s5CLrrI3dfHZdkoQqNribIZlDiWQQJTJkG57QPYY
	 LKfaUz/rbXUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5559FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832765434.7587.8571693938677245534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafa55363a22935c3ff5812a39c75c6f0dddb107444eb8255244db3497ec5e01
Date: Sun, 13 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668327654
