Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1E6168AB
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBWTX/Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0475C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696720628;
	bh=JrjsZWFmUZ/1ye2gR4mqNvJxdAtOamOj2t3wPhFMWbc=;
	h=To:Subject:From:Date:From;
	b=LBWTX/Jm/W2+X/psROMpdNV1LMo1v3fNdEBrQqo/3QoYPryjYONazWQYnB0HAzKDn
	 flwdEU1eGz9pFYU7UPLRG5N29POakToUqQja3udXVFoHNyX5+H5HGh4Rgm2rzvgke8
	 v6yfdA9W3VswgW96O8ZwmDROnKsg/ee9i7/RiWxmk/2ViEl45PD8GfxnTyCTR1k/Qe
	 3X8k61X4VPmRmnmUb7781sGMNoNzIoLbLoIeZ9856LGX+7OKhGITqqKAcHND6H3Gbq
	 2NICu0c4gZFACLHHQyP+QPALza+GAQUkATkHPep4Q6x8lkSae+KZhsHhwn/BTReIQt
	 xjzoR89lFYGHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6916E95A77
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672062870.16125.3994721247252869096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b5e310783ba146e137a69dd01f4bf587dbacdfd735744a78dd22134729ecf8
Date: Sat, 07 Oct 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696720628
