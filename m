Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8FFE3C00
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB10C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662335453;
	bh=52FA7O1g+BkuHf/nmC4Ei3MKisEIGZdKEcf9gEGnVS8=;
	h=To:Subject:From:Date:From;
	b=sNAbPmbufoBT62f+HbcuKEb8d25HvQt/iNJYvc0UmMSfgX1n2d3AZNO9O1DOK+jRS
	 /LNHJN6Z1bMgfGxlsk74NhNi5c+mpDMDB4kJjie5Eo7uWIR+tmbfHramS3xyVA5YgB
	 hG6Jy+I1D65oz9sGZecsRy8MLwp4Qjtwyyc1gS9OaGPplZ0Wsjor8iAVV28cwe+OuJ
	 29Ler2zNhZRRVTzthiUs3IrU4I9fkHyrdWAMeE+4gb+yOWF/L7DiqskJpZbDDAWr0W
	 etgOuAxvFLxJFEbBMrtYO3gQ9n/v/b6/QhzZXRY8TqbCIJkGJrERvV+rY2ZPxj6uzH
	 Wv4QZHSPgWOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E0D7ECAAD5
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166233545331.26835.14190451132605159936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0e811089c3a78690459364e98dd6761ac2773d0a30088a6edb922e2b19b011
Date: Sun, 04 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662335453
