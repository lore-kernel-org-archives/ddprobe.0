Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A10C4179
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 00:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B2CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 00:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689726068;
	bh=1219MhIiA/C502X6mmROo90smHz6TvqiskuQbsVzCAc=;
	h=To:Subject:From:Date:From;
	b=CQwF7N1tSPvqUc4UI0Eh118xzNSh8du5qaDlVvRecEqvz4by8MDMnt9mfPsa6wEbg
	 MgB6u5qLFd3p87SjSQPx+9IQR56cIbCeAH97ZWX05oIExNkF+2UFKvGAEG55xEdyE3
	 1Af4WQrPMq6TacHJIZmNRMgi9gT/vF9EBJyGAyeYxLTOPky5HpkeDNf+l1sICua1JK
	 Y4sbyVhsA/IM7PF2gmCukWZhHIa/tDsKvK4SZwvSdCt7UTKy+Zbau5IPBlMQacVuwn
	 lD2gJ2YUWjRJGoyCYnhd/1PYkVnHG1I2Uu0s9HKyhLmTVFLiBhtt5N0x7VvPR0ZWXt
	 vnhZXZTymy5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6576EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 00:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168972606867.30997.16296907994003472876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c394e112db293b7740d6cd906204dba4de93af501b3f6865b9f01d7b607cb63
Date: Wed, 19 Jul 2023 00:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689726068
