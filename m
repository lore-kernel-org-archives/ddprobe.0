Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAA52454A
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6FDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692879248;
	bh=vKTOBFCTlk1HvyrMhiZ/HQ0lvHJB+9fWQZSEYJoqBec=;
	h=To:Subject:From:Date:From;
	b=E084pfHnaGzQTxBY7xAHDZ49MY6Wdtb25ZecJuJxzFb8dcBtU0dH3hUt1CJcjHp99
	 P8D7UEIM2lTW523GAPInM3D9sHqV2XFrKsaS1aHtKNI1tM5bXEnnMNpG8uzvCvAxz2
	 Q9K91I0tgYRujlRfKHEfYCdAiD+6tddc+jEkej0TrQKV4hscxE2D6Utx3TEf9jX1Xq
	 ApV+Jo8n13tDfTM2RfSKeYYCQgoj3iEZBsPyaUnVRJEOKCDY5PVIUd83EN5pN17AxX
	 hGPEWxCicQS3O4Oe5rbx0xYEATjabQ3xVP/FAOMJELuBFCEOOprWzFbMzqwzKTsH8T
	 r6pXGGhMvZGGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B4EC6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169287924872.27279.2233839212057579337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df50565dd73ca1f9484abea5d1f799901c38b476fb0ff2261124d617fdf400f7
Date: Thu, 24 Aug 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692879248
