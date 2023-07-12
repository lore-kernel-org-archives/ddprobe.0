Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED5214E0
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 15:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB236C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 15:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689176948;
	bh=O3XV9KeWWsnsdAuvxbuLiJo6DTlf6kLruJPDxxSt1ac=;
	h=To:Subject:From:Date:From;
	b=jGdsKvjGE+LjrgPhBDW9qx+hXyWpG8AF/8+7G/82aMc0tE53PKutveAkoGKotL/DN
	 x42RbNudKqbyQli9R+I4WdXuQxH3xqlK0IjfdTXkSvPntjYZGejlDb40L8PlZOOv/g
	 te9WaMVakphVA5fZvJoQDSZHIXdXacJqXu46iqG+n4yFcfnhFXVrAsQpaXEopMz3UH
	 19BMKCMuQXMiVa+YqLOfoSM1DqkXWn17kFWmY63pS1p6w8FGHgqM9qkClhRVfh9a7i
	 laVe/TaKLKz8ytIerpfG+/9dFq2NPwyGtV8gpdlBXBLx/enz2C43cZtEfEuJfP5wQ6
	 GlE+/9gOxQ+8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C2CEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 15:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168917694874.9563.12180005562703029290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cc66e25e43e2f2a94ab14d628635662bcf9ee588e6fc50d32cd9d8cd342ef1
Date: Wed, 12 Jul 2023 15:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689176948
