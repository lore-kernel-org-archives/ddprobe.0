Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400F610EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB12FC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679219706;
	bh=4/w8wuQF1ydw5K7DqL3zFMTjJY+AcPx1Znj7WL+++9Q=;
	h=To:Subject:From:Date:From;
	b=OU1n98Y2UszbmJYRmSnMhbOrAELGLvDFSLEfr8vD3NJ8eMa209UdyRuETOew7abea
	 LuCR8tlGrqt0u0PJTtqnUwl0m9zByjkB9nfi4+MFCyiuP6aWwQ4NXyqYPq8AC84085
	 scbC+WZT+6bncpSnRO62g8wxwqF9hycsq+/ljreYIjaVIPyhhj56BTdVYTLFgWMmfk
	 hkexX545YbtOSGIJ0FlGZul6qBGgx8OkGXFLOleLwpSse1vA3tSU0hegNmkzNNRu1J
	 jBr3+zCXmB+6yRURBbwFEF7Z5QFo4nZzotkJcE/AgJAobYH/enTRJr31TEI/H+L9w1
	 mRxlQ2B5tFZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DD7C7618A
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 09:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167921970575.18703.8849691230105508630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6d690bd5862f558ebd9e36cbc4786c907dc562729dde59b52b698c0a96d7c6
Date: Sun, 19 Mar 2023 09:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679219705
