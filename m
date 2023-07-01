Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C34E3C3E
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3374C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688234048;
	bh=T1WBhStq6EtTZYH+5VlGLaKikWYKxAD3FwKUjbTrrVw=;
	h=To:Subject:From:Date:From;
	b=SiHe20XcSxzawD2Sh0EJ6I4piYPlI92s1Hk9Y3TwEeg4O2oFJ60CPzfQrwX6aHBOF
	 XhBl7u2K4HCgNFmUF29UjCy/EJLUcOqx6z8AVMx/KvPvIF9aqjeMFk0jX7C5cWZx1F
	 vNuoVJK9bNeA7CykgUfBPwxMViunTqLVcoYCvbJ372RfAeC8mJkHwMXHrOmUed0P//
	 O6HZ0TbMrhzFIYFGzDA/1Wn8M2Ne7+9UXjfbpXCkFoHIYiLDA1SfWwdXrKsXnnzk8w
	 s3iYu12eHGdczzJdQrDgZRBKLlEHGZlahIXLoo22jzn9wp58Z1CyCbPc1MF7DucDEm
	 mJffQFf32bTWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4FFEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 17:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168823404874.19853.17026409579549464765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf82e52b798f4a5250ebba944e9ad2af6e7061df56915b915c900eb527a7c07
Date: Sat, 01 Jul 2023 17:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688234048
