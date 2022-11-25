Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C22EF5CBE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705A6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669398654;
	bh=oGzRHDSuNYeoQqvRosE+4i2ska2vvpOjlzdI3kbVkbo=;
	h=To:Subject:From:Date:From;
	b=GPyaREziwrJDrZcShpvkmwJ/hpuaPdQCOo+MpWo31GipOW0iWqqtNac1bT1MH+H8Y
	 StP7jCt//4iuP8lj19Ofe4SnU2PINj5uj8sQ4zbK2ZNhlQIuqNdtud0IASdcvVX0lD
	 Li0lSBUS93OQmt7rsY9mRQ+fgpF3+UPgddgaz5Nrcrs/ythn8zfAt5KL8Z3LNi6JLQ
	 GPPALur9NJj6Iry3Z6CBNKgLQEjNzmnCGVjQDFlWL16zXwABvPnkBnTI7keoOLuUcq
	 lKnX8Ype1AnBE1ndWxgxnPWBnL3Y42rkU3tIlJPHvP/uGTem6DmyBehPunJeMEYqx4
	 UrU3yekVhrSuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A2CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939865434.13131.8964613519389023941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9affbf9a67581f53b11cea41cf6c59b5ac4a4890fa0307c6f3fc605f5bcef037
Date: Fri, 25 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669398654
