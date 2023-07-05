Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5F115482
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19BBC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688584028;
	bh=/l9MZkbSgt1IeL2P6ZiDvuGg5X9GJtTOsPexX4CDNbE=;
	h=To:Subject:From:Date:From;
	b=Xew+8k24Wu2vLkU7cHOj7ewdBBMoEMBwytNRSo/zu3k8Osmzzf4qcbzWjxFbi21f6
	 lD2iylALtHkOPsewgjlXOm5g8mkGAt3DmnR9msCTihqQ9eUsUfeHLrlArwWupK5CmE
	 hCzrkpYsAV39rFVYjKkSiXqDhTCK8ZLWfjeByHUY1TdOHqOSMflA3b+ciI9eatQRX1
	 S4YEzjLtYDOKuHHvWLbKeFkEhoeRpe3MEKLQA60WWLofsvecIB78TaO1xcZ/ow7aFH
	 MwUdj49bN9y3WiMCF/OTjPA1rS3i6y2E3FEuyYPD2FtRD9x8aALkhSka8UKDKmkvGc
	 KAoxCurud7YtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C63EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 19:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858402868.2043.13252237726836302703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e24b4469a12f14083934dee25e661142e00895c04ebaf0acb480a94fc449d92
Date: Wed, 05 Jul 2023 19:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688584028
