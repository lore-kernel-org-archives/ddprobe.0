Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117FA3D
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCC0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691721788;
	bh=q9IvNk1x0s519D/XsD9r0tzG1vlwfMsok4b+zgY+n0s=;
	h=To:Subject:From:Date:From;
	b=Ajuq31fx3qUYUAMywI1R4cCBe1Ed7kUpV+u+5Mcsb/k3ruHgd+S1cQ2Cr0EWH95EG
	 CCEPgOhrVrO9ecL5mVhkfXDmZbPVDKv8YwGuk5wFNeQrqu+b7NIwAtPmjjwjQr/y0D
	 lz8FzA5nob9O1Zzxe/xHr/spkMN0IjDaC9vGq/2eJGdsVhHnIFGbvW6cRey4vmb+5E
	 geDlWiGSPN3WvQ+NsbaY3Z9v5YjdgV9zIIY/tAW//Qe5+nfOjCcvUcoRwyQmC8z0hs
	 iuW2aMcGSptbnGPPof964k5uqr0nz1+tkuRYBxglbI3Zn9JueIe4JA0aY1f0VeGdfu
	 IfsQWxKTYYAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B6DC001DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 02:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169172178877.26237.12374646041666254155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324dfabb06b757448f8bd4a83d05e5c923c313f376d55cadc5e30be7cfb56f57
Date: Fri, 11 Aug 2023 02:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691721788
