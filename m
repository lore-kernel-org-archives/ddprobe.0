Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C264A3C13
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74099C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665767453;
	bh=zzi7zxn5W3FPwjxEtmip1YXIALalbU3FLngeBy9SfEc=;
	h=To:Subject:From:Date:From;
	b=OawMOtzWVZpvtf6yc6tlxdadzpvxHxgclhScSrCRqZHsFGSDOuDLXvVKfEksDmNg1
	 8ueKCjYkrKUpZCPl7Z6q/UqxEJw0Pmj9eVHQ4A5m1tldwBkZ4lErxU4JO0InlPUbLs
	 QGfpwyQtrNHQqle6hYWgbDbOp32J24w65J7PTxFEOQ+4m0Q8xlrDVbNgyADPEoyf8g
	 NWA6CRNL2BXL5xjn1e8CpRzsZIrfzJ2H2t02BEhBzr0GmzH+uTBvDO3bMsDCwqQuxt
	 n3WR2HJIA/dseYl9X903fQLyfANf066jXQunpNimbUJ/OEu4nUl0ut7dFeCOw5HBba
	 c+ge3naVyBJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B244C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576745336.19970.8859320948732896759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc003d2b6f92e7daa7ede155b2a9376f06e12333abfbbe64149250dd515ffdc1
Date: Fri, 14 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665767453
