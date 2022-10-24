Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C8C659
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D038C433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666597253;
	bh=CuV2z3GLh243ATXI21PgWAI8etvRRHS8I8ia6SEY3aM=;
	h=To:Subject:From:Date:From;
	b=giS2C6hItUExkhpZtkg4ppdgCUTnI4yUBlTtTyPDpmU22O+8XwBKp8RxejpdfVXCz
	 uvRu78GlHXj21ZHOTQP+wCRi7PJjn3qmBEfWtcNGZAaY2DGATppislajbrtRWGNFwh
	 j0U4RC5afr60mahsw/L7q4irp3cGuzKTR+GX7qmTNyLB4y5VBJLgQLatIc6JM1gzZ3
	 CQCiBAVaq5PHZeJbsgYA7nVX6u6zzE2sJitTu0oUMh2OA/eo/MNQBHylBOuIycPQaC
	 8bg1IdVKIu4XNgqn2DvJGGc0h+Fsfweg/XNoOw/iKBU4CYmpz1wAVwByx58vozIHQ9
	 pIra70DQ2zd5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B75C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166659725332.6776.10126994151342594226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59db5f66a5b1ac5605860b2e92037bc3cad4a76e7044d6b2a7d05247d1327f4d
Date: Mon, 24 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666597253
