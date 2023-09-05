Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 728AC63C4
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3920C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693908248;
	bh=60pxqvF1A3uPBPM5fMs2/bgTZLSEsXIZbWg09qtz2W8=;
	h=To:Subject:From:Date:From;
	b=DDHT08Ro57YhEGjODaIhCiq9qvi3rLuTmtOhOQtph2M23JPQRw4tXpbxD/T4zehxW
	 wjCDE1/Nvk0RFv4qjCmvy6grxr1/YC4IMCmUq+dENF+xOafkzZD+VR20zJFwoWwNbj
	 pm5r8Ap3feEGB1zcLSR/m623HoBmxSV5kHjgZV1LlsN0wMD+kLvYARncb9V1mK9wA3
	 cNiiZDndvZs82VS+E9TncqHCxmf0tjYGvGoM0SfjcggiSO5f+2HY+VJNQlK9ThLExP
	 J5LJ9e9YJTG4TrT7zZ66kzpP3IETfBMuybC6JU0HpRYX2103jhYfAJXV3muTIapggd
	 g1/1S8PdhJktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E16C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 10:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169390824866.18747.11513598789606921232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba535f8ef9f43d535eb1c18e220871bff4cc03b027174a3d17f7586b76f4b13
Date: Tue, 05 Sep 2023 10:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693908248
