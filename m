Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23662F3D
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C1E0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673739087;
	bh=K1VVENVkx7tenO9UWq+v8m4si3ED0PK5ead+/8znYr8=;
	h=To:Subject:From:Date:From;
	b=MRJOFpRpK+MZrAFf1Sid11Uo3pnX+rPK41b/tVS3TB0Ec5IPduTOQifBwrcZFTBZW
	 ihkmpqQpeub4YByK+PCmOUDSRTRFezbYdE5iPfOSR0s/9pj/xedS6mPbRumzjke0Sf
	 Q9xc9NHoliMrDG0tbP26pBop1BkpJ7v2AFNPgemIbwc1KLYbE/2TIQh3MpewxLiQ39
	 YRhu+CVwZgO0gWayCi+QdUe9lOa0TLTl9XzLzIMGxgrZGV5ik1ysTrxuFbbh9kgiOF
	 IMpioOhNwTg/Qp7Jq6LH281ReG+m2tSOuZJO3ilRNPSct67UwhRItNTxN7JusIhnLo
	 JeiJ8QMHm7SKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EB95C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373908744.1889.2010533497638825033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d200e7e3b25fe4ccf32570c228233eded43f7c7266f4f4b6c40ee6ea9932784
Date: Sat, 14 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673739087
