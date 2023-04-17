Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8C68BEB
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC002C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681762746;
	bh=+uezX3ITzmTzYsyUo23kX+Iv1xOmOro+EyP2KnnRYL8=;
	h=To:Subject:From:Date:From;
	b=akkPD/KedWvU2YH2c7QGDKEjVqRPk7ksUClQC2D1SNb27YLZzeR3PidYu8XPH89TH
	 HpjY2ohvWdwFSdb3l9Yaz7QeDHNQHURDWqF/Uan9GfbU7HOND70q5VvuSX7fNIHgkN
	 5+IgjGZhtHSKyfB3TM9J3rvuh6oVS42VP1WBBx2YxoT2SUMsI8KonV4wjgtHeDJOXS
	 D2wt1R5XAaLVij6IkoZy2L88YjMi20DgJyEmBya7gIMBrsIzR0dhhs+3CH9Q+dgTu2
	 El0DY+mVUIAaYQKFUjJOEqnEkmBWo315oINxeh+SFbPyA5Al7y3yJLPq7/H8hqbsiw
	 XnjdD+aJ3hnqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00E9C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 20:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176274577.15142.15353619291347383766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473738623419742a250a9e2725d6d53bfd6315425ad8acf867cf33b7d27c61ef
Date: Mon, 17 Apr 2023 20:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681762745
