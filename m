Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8416037B97
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB271C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686066126;
	bh=1dFhSeqrc0+yfu4NGN2QlmZFJTlaZSw3Wz2tAsZHWVg=;
	h=To:Subject:From:Date:From;
	b=V4dqO992s6aJ5YEwTDC5So7QeR+OyzvYXpTbtqURxl2+aefyGsZcw6LxcouMAHlBW
	 A6cPqjwqlK2A2TNdElMH6ZQXKCGLyUnCyB3yPB4rStAMFuIkp/VnFn4VAB0C2zCySw
	 LvgtZlYjotaWREdkWRTaKC0zkhJ7zrp/VG8ztyn96DGNPckGHED1lZri8I8z2T4DXM
	 ckSdEDcVcgWlCYkaPFOv1Xw/nhh/Pb33ylfjIN/IiNB9QK0CA3GgKk6F2B8pRkOEOb
	 mQDOhcRnkmqeVs8YJnLyxPEtWm1zrZCr/72tFnxZY38nEJwxE0VPvjwpMUTHbMBV6a
	 5/mzhu4F06lng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5EAC77B7A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 15:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168606612583.8743.3373389232221203916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21150d194984df63eadcdf722c1f2fcfd8296db50deb4cb75103d7e974f2ab1
Date: Tue, 06 Jun 2023 15:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686066125
