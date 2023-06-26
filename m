Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591827F6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9C3C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687744988;
	bh=vxqSI1JNGbdBx00kELz330lAyUU+scIA+YP9T/K5D/8=;
	h=To:Subject:From:Date:From;
	b=nN5tqT2OXApkHoI/5psvp4Bl20WDcW4wiE/MhbaK9aPr8BcViaskSia4nqxicsVxK
	 u2rS2CfytWZ93hjqTCOnxdl2NXrIgBGkVTV29tI3ptPs5VQ/gUraGCvAdSO60gcPIW
	 4YIdcVExubs16QoTS+8Q1KbG2pq6M5vlK0PcxKzmOilCM4tVMmFwF8TRnxchI8F5aD
	 mkCWCbfbF0CfTTGaGwuYwOKsS3JKBbCb+xkys4Zj0mg6rNZ1iVVK5/IZSQtle/7Ge8
	 jtWPlQZOcTKWxDkMPW6fIhVBjCfVcElWyc/768Uk6Fo8E3VDjIlXUd9M6cak5m06bY
	 3RTP9FAZS3dLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2B7EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774498869.22139.15230944660060925096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49541493fd621e0c5f533741e398e48a12618c39f83fa0fb66b9c7e51282e3bd
Date: Mon, 26 Jun 2023 02:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687744988
