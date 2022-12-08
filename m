Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C561B62C
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A1ADC433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670468454;
	bh=ZvELCz2DqpTcoSEjCG7JqVTyE0BKXvwsne09AWQl39w=;
	h=To:Subject:From:Date:From;
	b=tVUyhxNEf65g6QQ3XXvUnvjpc93HeYYzSlmFkN7SWsEFrJrGrnzmBqIVadDk3fFDA
	 Pc2zpSTcmgpRGWMghQD8DElHuMNxxcQ4FqOFvbETLSE3lfjmMorbCbLdU6wWmg3yOt
	 m5oX49W1n3rVrYeSlyTy1s+F1NjP/ucxno4YeUr2E3ty4NxOSqYMOFDzafUQGm52Gd
	 Lu5PM6adLYDaze8KKQVdFxw9fJ+4ba6B1GPYIublykF95IsUkLo4BYlFlPuG0M3poK
	 nx8JRj+Mz00em20Nr316X6JcV+Wb+Zb1oXcYu9nbyhjvkvycDiLeWG5qo/jawHZHgk
	 S53KlLH0yK3ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CECC4708E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 03:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046845433.26700.7983511981021031771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d34772a736e7f3ee291a95f8d0a9580c1b671e0c5d226ecaaa6e1b8225a621
Date: Thu, 08 Dec 2022 03:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670468454
