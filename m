Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0A0568B
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6901C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681308725;
	bh=LQzcJjNfR0FiMkfCMJA5GWJCM9ou2kF2wgzhY0yqAzw=;
	h=To:Subject:From:Date:From;
	b=ECmzCVDJ3i25j5Wpuhv4L5ul/TWI6pGPgEO5MbqfkYDNjiR7WTVTEkmEqG1WNLsNN
	 yMU5/bBNkuIgu8B9Fx4z8P6P3/6nBDRpluGTERxcfCopJQxhOFgeACmfzKzt6irmt4
	 /LSyK0FS8o3OBbAppRZFX0RuArmWdH2+vNm5r83toX/e4z6fUBSi8WBGwfKY6MflVa
	 mEOoJJJbNsqwj3aW8XGaQOlCpJyEp9n0er8DtRDxnWZ8IolBGvN9eAYY4tDjMAnVLf
	 wKDqoG6lp+3VRHu1V1X36dKpqHdFm2luSBSVzzZ1V8r9UJap4lzkq2EpeYj69o63xq
	 R1zonzsbx8oVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA096C77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 14:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130872575.568.10134276607609652925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02dc631472aae84a33223d0be8f83d028053d235e7445097641801304f54eaf
Date: Wed, 12 Apr 2023 14:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681308725
