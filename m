Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA802560
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 13:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFBEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675086185;
	bh=OyxklYixFrSr53DMcyT22zGmtHsaG3S1ed7oo0n3Ge8=;
	h=To:Subject:From:Date:From;
	b=g/0rleS7dFTd3RtqZhyNt28I1YhhPzR+wuyWqqSr1lin6Jip03iKZQ4AMb5lgoATO
	 xqlH6/7weoKPVHy1Y6H511Xzi3MFRl2cw8goDd8znGREWyYuh16AQzV+lMvJ7yuv/N
	 q6sxVdq3A/mdVYogkJr+r4TjSMYlIrDDTjPoFRUUfmAyUx3/+SJg0G9AB03FRNjdgA
	 hbRZIwpVVRMaX1w0UvTcGpzx0VKMEFqhVMnSfP63TLhOnOD9Jx/X14TdStBnQvvrgb
	 cKIOV2bIkjC4ENGOAQ1rp0ST9hBJQ2zZwebvXxy+G1kevqt5xz3fzkWgYV2hId9HjH
	 3qR3aNPtvb2Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B5CC54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 13:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167508618573.7407.6149367019933430482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8b08be60c6d57aeee23b370e3d754085fc200ace78fe0c234e59f2281decc39
Date: Mon, 30 Jan 2023 13:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675086185
