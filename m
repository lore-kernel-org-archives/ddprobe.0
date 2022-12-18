Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53392CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A212C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671388887;
	bh=C0+cNVaLx9xtJLk3i9261AyBV0640k+cRzcLLN7ZPso=;
	h=To:Subject:From:Date:From;
	b=P0tywFGmXtYgWqQcNf/e8CFUwwiwlyVQjOuHL3+xf3IuH+wxQp7VMfVVb1bcIWa1S
	 XqVTJ2EHAp3KZweJurBbh0PUhsV+sOhytVDrrz7krTbrwKE4FRDm4fMryiqutNs5mY
	 OuQzsN6jvODOi6asL0+QuHSJrztGQaam2Fku0LMLLuJXe9goGfOD4j8y0NoEwB3pae
	 TRIpv+Xdvs+a4dA5wMfMHDLVydXm5bIYiDuTpseYjf/p7cKpVj7ypEIp+6b8OR1++m
	 V0LOHTZRJTrtygOLbl0mH0gAiO8xq/Z1jghBaBp/VtSN5ttPInp4ryzds7CkK15HeP
	 e2bTHxPCSoSXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C96AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138888742.11800.15032774264914116977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355db49291525e04d99e3c45f4e87170e2563f6e438136b1faa45c0507335feb
Date: Sun, 18 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671388887
