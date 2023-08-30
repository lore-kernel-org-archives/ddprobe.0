Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662E110EE
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 06:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3295C433C8
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 06:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693377248;
	bh=/miYyNtWhF63HQdhjDuo3oedp05nY7UiHuMaIcJV/Tk=;
	h=To:Subject:From:Date:From;
	b=kYgdiP5vuZsZyF/typn70AVIwnTAi5qKLJEDBAGmNtuT7eL/tfJCNbHW9UsX/3c7g
	 ii7V+38isFc7TMGqT5I1Sv84pnKnndvCr9A0iLe8Ek2rzix+G9UaAeBLutgIN+oEBf
	 +S2bkq+rKh8eg4qHWSgpzVIXlg4NiAM79dETTBTudjB8U5c3dFCa2mUE549YCAxDp4
	 4VvNTpOBgbt5QGhsQZwtnX3mweUiP/0knDOvPcMrTX1rksiJAfestK1w81C3J2XjVZ
	 8uzEIw/ZHLa1qHXABRQ4hn+B3O9SY640sbXE0VL3hbdHv/4bvVkNHKpub14mZwqCR2
	 KSMBshXVXalgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB94C83F15
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 06:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169337724875.30953.16045255369858053981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301b00df3b5a53af987f90541e92368d80a6987188c7ff4f26a65bf6a1fe6c0f
Date: Wed, 30 Aug 2023 06:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693377248
