Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0965719386
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ADDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692998048;
	bh=CxUe/En4844womtaD/he5aeGe/GP+YXoREQeFCtpzAg=;
	h=To:Subject:From:Date:From;
	b=rXPsgOIWNZ3G9xE0g5/32mO0iTDy//h+ycQhq+hJNrHm7bmdfPDatMPE9de/lOloD
	 0hXvd0iGAkHVGcPoB9OyDedero6T1GbZy/Xvq44t170PuF4WXBPFKp3TcFnW6Ufq6g
	 GGExMderckAOq+AqghH8OFDJV4ZMgZv7Lwfm3jwwF7wdvOWfbA8Ev02FbaKQEIKV77
	 IqimrXemwXy+zLPPB1sLsOulsUVnQDlVcD1bhCTEMqU2tLPzncFVYcwccNhsFOnor8
	 HWYgBB5WE1xRX3XB/g7b6U+KBopGqGQVtmMls0jTJjW44gedSdX/owcfnou6IDUdLb
	 zPdnQZ4i3GqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F44EE49A0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169299804872.9792.6019679715784270468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec9d4d4cd6fa73d6d67199ccf95771a41b5a155fd4dcfc1cbbbe2c62bdf0159
Date: Fri, 25 Aug 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692998048
