Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4CC1ED22
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2562C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689953528;
	bh=d+vAHQG9y3ZSjwVvKs6YA4JrmV2Q2yWsHRpUGrPFBvE=;
	h=To:Subject:From:Date:From;
	b=qwVe93UA/izKNrP5AsLjubsJV4PHVwPx/PgeSCP3muOYZu6ClS18JI6zoa3sCKwLA
	 0WqNgHhKYHB3p/JsgL0iQNhmeiOgZAnstiVJHO2U70f1037ZKiLlKN8dutqsPu1o20
	 waCDPZjCCRRf4e6obMtsvakHAnyNgs1L8kn5dY4PHN8nlBhNRKKHErTOk9T+HmCD6x
	 Nw4SOawuZATLXA8ELO1BN3e+xQ7tOxAzbM/0ExkiRjLgnHirTFLHkTdPqNtoKBI0Pc
	 V3zTWu1UaRud0HxuMIU49B1hVsgpwoH/mM5bEDcPjqpAu6nWmsn+YcAAJ8yFe3l4hT
	 ymE3T6x/va8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3DEEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995352877.8720.10294707593519000400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adad5e75780f03d6976cf5a66dacfe3dff73fdf8dd3acd658841e4f03a5a30d
Date: Fri, 21 Jul 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689953528
