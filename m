Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08D72586
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7164AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665858053;
	bh=KtUxOXbvxvOYS6Qp6r7TeX0GuATT6Tm2PSBAHWS+k0w=;
	h=To:Subject:From:Date:From;
	b=OQvWqAnQOspouR4sLv8V73ZfDdclmN9vhpki/JiwlY3fZPsYy+A9rarTcXXJaiypy
	 Qqn34c6qTmgCEMgdNsWc2qCxI2SWC4rUfNhXM/xYou7rPFx8e+uFVV+/7Zjs9D1Oby
	 rmH03Rv8z8M/5EQdcXvzgjnpCtuj4ArHWV4/3M1g93CmKNI+VpxAJ/oHUqZAXbxi0w
	 D1byT+sf32O2Zq1jFtLmnFBDbcg0viSsvZLgb+HIdF65P4ucXaaJMVM1M/9k07pz3e
	 c0wnnc2oFO71CfngJt3RIIMjA6+vgHS4A2bh/00X7tJqDTJq8lAYtN1A8nq6hKoFXC
	 19wONUzqpL7GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56AD1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166585805333.6918.15055137627985621797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4888b1657bc188d8947f5883ae0a18a7755de5760f7006d450e8c40fdaf31953
Date: Sat, 15 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665858053
