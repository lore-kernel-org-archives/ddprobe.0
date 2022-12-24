Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3047B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F98C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671867087;
	bh=+FYQ+d6bzya6HHdnVBNpOAfL3t4LpNK7TqNmDm5Ux6g=;
	h=To:Subject:From:Date:From;
	b=fGsIHqSytU2j0gqji13vAo/cBrzHl2cMZlbkXmRyXqQd4v0nC8nQtQnze/Q48Tb4M
	 kGXNaaC9+1Dpd00dnBYZJncnH3q0SyLMXhojTJdUizZw2UnbDo/c9zkVaIPTLKlneG
	 lFpGFDLvFYMEiA2DvwoM+aYMA+cbGk2w3rQCVn522krWjk43FoT+bBK0Z03n6IaNC+
	 BtH09U4Hnd751E17cE9fbVUk3+/sQuw2Y0stvYLHsNLEsgeMLQExWCDWfZ4jWMczm0
	 I2oZnU4jrp9U5se/paet7MyeUIJTsbVGm14anPfVzuZn165Ozb57JuSyYpEvSP63oV
	 7H/ra23BteXZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B1EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186708740.3772.3411808665440505693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058934a2ffb148fb26ac03ef4ffae2c049de46105df4ae472c925ef27252da38
Date: Sat, 24 Dec 2022 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671867087
