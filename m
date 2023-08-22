Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687E91855
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78AC433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692685448;
	bh=QvZv3Mbbk1JlShBsLjvOiOaE/AQkf7FYAXmp+sAHMgQ=;
	h=To:Subject:From:Date:From;
	b=QxD7OCngrXzsOk4Uh3o/1XnGBFM9vc77Mcq7qNAj08VdCsthoGz12vlKSIAkJLLmK
	 jveC+fpjA0STjxfb8IyCxG8Ohk78jeXXt+2gFRNk0bVt5FPJelUVwYNa+AFNQy05M5
	 1pWuUyL63Zmf5DIjNlV1r3EOYk7OmtXF+TLBOfFeQwo/jvobwE7QEeNcovP0H0x8Zu
	 4v8rdTc5dzci0RPRoUZmFX5nzCmuHqhDki7PxW3k3PAKAu1TEpG6FBE0oFGojiEh2O
	 OiLS5pVOGgoGwSM5qIOGMgrZDpSajiWIZsE8z0IVhAdG/+CddqlnQUBR/sAbkL7Ygn
	 9OTcD93eFEabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC815EE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 06:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169268544869.15513.9308665063932136650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b1ea98b584ad52cdef6598eec631fa08a5ae0171ba66e50a2040af99fdcf44
Date: Tue, 22 Aug 2023 06:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692685448
