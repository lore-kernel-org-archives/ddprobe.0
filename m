Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCA7A21
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF91C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688602028;
	bh=36v+R+rQuqkqyTGU/HVOMG03h/FljAyJH0Hie9nnpXk=;
	h=To:Subject:From:Date:From;
	b=VR6g2m+i6/gumnPT28Lm9gMI4fynpe0VYAmiLRqf2Vx317v1/ms/d/aQpVGqENOWG
	 XJ4UoctvzljAZDAPrzX64vci8mMJ673woQGJ/Xh2IKR4PDbH/DakCjOfKscPtwEEuO
	 VqUAJ+PhbE6Nf1sWGqCaLQnnvlHg1wQcwLS2HpShT2wJgKL24JYmKzhw7pKUveLXPo
	 6Kq6g3y3afl8RGGj/0S/WqUf/+On3UjcCEeXNy0RxSyC7tPEwILdHCG9hEP56DY4uZ
	 d8GZkvO5r5g9AOEzWvRS3I8Ey8GEYUo/ApqrrO5OvGTpX/8euxJaC9W7R6rqhddVMF
	 q3r3A46bRwrQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB972EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 00:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860202869.25351.9339146766601476998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03042110c1e54e2fe73f7fdd7a8f7f821a8c5bb3b77a474d26f9b2c72cbc8fc8
Date: Thu, 06 Jul 2023 00:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688602028
