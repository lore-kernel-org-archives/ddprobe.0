Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5409863B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A6EC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683001446;
	bh=9uNsKMnQw6Owu+n/6qLipdtIzAnL7fjWGQxNwgWOdvU=;
	h=To:Subject:From:Date:From;
	b=nqiApb+CqHZZg+yLTcmY4Lg8Ih5/99i7N/93davtDlfQigppk6dBVnGcgyq7d41qB
	 DHQxrlcBA4oy2OHvnGGBMxbRC7J+UE8/o244ZXp0Cyl+Zt+O9M1qNxRM3oWSex40fT
	 NR+cdY8EfsmRIUF83RT98Kn33hbzmYr+bM8GGNP6BiUTWySkhq3SFvOm6VTf9ts/kf
	 KWHGq4aXnLD2Pbt8tBumPuyEkBQW4hMYZhkWdHEPo0gcnF7JNpGcgnWk39RtKhdsyH
	 /FgTXmEfXDA5eX2G9Xz+ep3T8NipSHe9yy3t8wWXcpquNSe2V1ULaYAwNkPa+/ybNS
	 vTxBRaDW3NseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1C85C77B7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 04:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168300144584.2846.7977218339742305891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb1c03f30dcebc68efeadc0767c3fab58b2c676db9415920888bbe292cc5ea64
Date: Tue, 02 May 2023 04:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683001445
