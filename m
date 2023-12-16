Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EAD18EA0
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKjsutrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D179C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702719496;
	bh=qGbyKp+1ElcDCIHGtkHN0a93KPe4UfpOmLcAc0E17Yc=;
	h=To:Subject:From:Date:From;
	b=NKjsutrHaxOKK9yyx4zz1SPZvBxaarfb5ISh+BnyT3QrqPLKul6e45eFPHBaFO4gW
	 S455P6dE+rtDcMNKEppfY70LSnwzDE+bR2q5p27EPR+7Ea7YG3Xjn/3TYQX9I18WUV
	 Lr1e9hy5vBKUO4WuaucK7bJlvBCOk8LJpNwAekH/efAOctBK1Ej7OnMlA3wg+1PD62
	 VoI66MZgGUR53x9Wn3Pksn8M2DrhmOx29JSkIiNnyCfb1Zik026xy81+kJxVyLAMMB
	 10f0k3TnRjm1iRXDWF/sn7RzHn7A7TRqKexFLpe+1WPhnvv0C1x250L6/IUR9L2P3o
	 hv8dlx6eqIAHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D6DC38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170271949637.17116.12644496744365304190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3d242f39e3de45dbd7b41f199ec23fd53e65f8a21eb28068dc28bdd58f1ca2
Date: Sat, 16 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702719496
