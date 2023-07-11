Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D29A20
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 12:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3564C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 12:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689079028;
	bh=sb4/X/JmwSktkg+fTdaDain0XiJaf8UKQd/eWvKE7U8=;
	h=To:Subject:From:Date:From;
	b=DiPnjpvPFl7Czob4ZnkGhDRmn1diX0kb2LPi+uwH5r78ZVzwHm2xgOtkZ1wm3rlbN
	 cwpuaZIgcNaYQaOAiq7vv/L+s8BeH33W03thaSYNBbxlo06tHRBz0CAPNWDzZIAPPT
	 ADbrW4jyyxQ5E3OhbJgB/if71wldc4WSUFpxviB3V+6eMixqCgg+GqcGbNPeno314g
	 uikErAWAj7wTvwVdFC7ntgOHQHoiFp3eV+ZB5AVAB/g1wHM5n0InxqBK+0EmvLUb10
	 EKp+HJA1FQHsNuF4tb1MBf1Q7K9HKAa5RfGITwjTAEui8381CngXTe2OTguWSBSX7T
	 T4w4PeMu1DmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A486FEB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 12:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168907902866.27994.11559415290211905975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4f0532136ec9de73c9e4b90f827ef6f3f8be0c21e3b5fbc90f9c37b9447323
Date: Tue, 11 Jul 2023 12:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689079028
