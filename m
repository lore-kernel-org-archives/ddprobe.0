Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FA77F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AEBC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672795887;
	bh=4qjDb/0Qlb1gQ/rs93bZ0d7Qdxg/FFlXtT7r3Gk9x/U=;
	h=To:Subject:From:Date:From;
	b=e6hSZdR2SOIzRvwmqteFhNLT5aaVDMgvLd5Tjari0MM4jsIPA2usKIFePKg/v0XHU
	 SngJDXFa/WlVnhxvMSrUmYac1wH7Ms/kyjNWpRXkh8jJllY2HlL7nRqmz5GINzx9Bz
	 y+M9YXwAT1doOFXKRDHJ2mdvFCMHJ0fTWBj/OfPUoizeyFM4B0I/yQ4COZRxyrjXTO
	 ouiye7eLKpPSHXv6VeU3D8La8MKGNSmVkuc3vCo+fhRlK4jAvWF8j7woKXAVgpfYkV
	 udjpIJ1wm/MInotXyfGTK4YHIOdhiTe4o/gxezbIiNriHcN4QvPO0PdzU9Sv9CgoBE
	 ZTBXxsA0uewnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62893C4708E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167279588739.17907.16381926916270820229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d54944a44ef852f5ca64f21638272244295640b4bec875cb058451a6c55dc0
Date: Wed, 04 Jan 2023 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672795887
