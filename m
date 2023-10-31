Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13342D28F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lm/CB+3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93154C433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698745696;
	bh=6Sf/NQ6h8EaMHMDEH6P6ufnV5U10Gs7NnmMlyaGFfvA=;
	h=To:Subject:From:Date:From;
	b=lm/CB+3OewA+3e/vQfYTEZGHYlZMapVjncMnaQgw+d+kEEB1GTzbefFoaEdm8TOmf
	 4+j6Dqcl2fliWbiYtbn3foXq5cDYpq96R9NI3mym8BbDPPOkTh6cDv8qVNMdyhobF1
	 spc+aDJsGdtG0OGJ/YDxr8VUtqCNFmzcRRJY1zUOFXEhq0RgK1ENg4RvZftHpBnpxt
	 Nn/nAW6/WmunOuTi4y++xpoKz1oJlXU2TLKjUYvQNqpgUKo55mqhAjAYbDzG9okciX
	 qmlaafDiCUsljf8jrvJCvjBolnjwY9LcazTVRi0uQYCn/gmphmA06V2vkVlS0vxH/w
	 7Jtof1rYwt6Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A647C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169874569642.21477.17323086828705087194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e90e547ed718bb071c3e2b89da62e642b778ba768e4d830edbfe0451c5147b03
Date: Tue, 31 Oct 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698745696
