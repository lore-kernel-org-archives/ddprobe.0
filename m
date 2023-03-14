Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33855946A
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90B4C433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678819085;
	bh=LBmOZJKUPC+MvTwWokY3Ag0n+KulseTzGHtADN44JVc=;
	h=To:Subject:From:Date:From;
	b=MgwOanqRrac8+s7vpNx4D39YcNMsQhF+CqNXaMbbR4jLKd/E7dl0cNeKiftvqzWX7
	 48RghIoElC+sLh+7kCrfFVwE7uooA34T11V8A0XHRXFKo1wMmIcPTf1Xma3HZMWQ20
	 QfFw7pO9a07o5WI1jTXriutiCoDNbGY1GwVTTGiGPgPpfPj5K/4I/hu6IY1FrQSV7L
	 w6uVjvNkAUa3doueohuK/xsiSMKtcHGmc9C86ZDFW8jc/woiqW4cBuEHMSQCZPJ/R2
	 s28UlDl9FMbBizInrr+PdLU/tWsNlDW0NXPJBiLOBGCS0YfEabEnnmpNijhIrGogtt
	 ba7Lm44bWqywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA4FC05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 18:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167881908577.26157.3130997982865096262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e7c9a97cb3815d709fe4063ee3faae95dbf0b6603b3bc6cfcd88fa9035be3e
Date: Tue, 14 Mar 2023 18:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678819085
