Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F42924F4B
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:20:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03156C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668187255;
	bh=VL3kOptp9bgBmj11JFnsr2VWFh2Bwl7K6fFHhjtAP9g=;
	h=To:Subject:From:Date:From;
	b=EMOJgNZZNnFHeWNEOICqFN8wYqyfEgpfYF8XqaDAQSYIsPjPlVKeyj5ZBspvn0zdU
	 NxJnGgH90QHoNSyLAzjM28tSfNHaoKgzi81pNjRLEDtd9NUIxJ8xkaobwpCyD6ehEG
	 Clbs7b2lRtrpHg6NVq8SZz/cO7zmrZeuY5KUPnX8q/98AfFMYBRDGpCNG3VTZHYNV0
	 nOpfk0/+TQT0Tvfk6rIS3hEJUiv8ZqCCpNI+scc+zEPFayaj6vbx1qmBq7iz4Q3SZ5
	 So4PBTJoi1apW5w1thqAOeyR/D7tWZ+8IEtopO4ZR+TMFGi/HcGthmGkDbh8EWYoYv
	 HeQA3aJbysgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54BBC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166818725472.18655.6560650606751512076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77f1abf4e323bf77b0715ea4819f3ac7fb0a9d536c9a8835571e74058cf4045
Date: Fri, 11 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668187254
