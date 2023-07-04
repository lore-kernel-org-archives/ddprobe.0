Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D406625
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C953BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688443568;
	bh=rCTJDaYMy3DmylTofD+jk8ck6NdJdoZ1A6wD62O0+4I=;
	h=To:Subject:From:Date:From;
	b=YoMwLeIMKVbjAFU3GyzetXDyTmLcEMpjfxOBeLSVJLuSDAayxtBXtplwn0Ixz+GPL
	 VYUSqc04MjC2sM9r0FTfqC59WpyCLyFaO+yKMQRFY+KrGnLDU5hY90+AuecTQzwqEL
	 JfzI7PA+kyu1RDuUVxgPw2O4O1PbnAdETdQ8L0MtujJv21C/La5Vv/xUHhiELTk6NL
	 nuDXztAcNwaprFYVqEcpkPq/XLHjxheLy6wSFBtn1JZiaACjAdGrxTaMkFaxinYuKX
	 1pC2UWv4GiyG/DsNAvFUkxkmkrbXhitAPO0uR0eLdC6lsr+YsEfd+ogUhBeq5/4zdT
	 Nb35Ivh5Jaglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBD8EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 04:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168844356869.26734.4657901167367666590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e0fde688526bcd84d48e9d7ca1cf68b9f4988ed574d687dd55ea8a0bfad4fb
Date: Tue, 04 Jul 2023 04:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688443568
