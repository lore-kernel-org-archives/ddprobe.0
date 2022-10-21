Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA27217FA
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8629BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666357853;
	bh=DAffZcyg/ue6nVoysOqft4hr+l7VdpW1zDKn/Ir+fI0=;
	h=To:Subject:From:Date:From;
	b=UsLaEKrDMO2Fq3bxoDJ2byg43gyhCdgAryHc7Ijcdap5IOcGrN7jI9LyYWQmvbF8o
	 /IfzEmuEYJoCanb5Ei/aFsvAJzPU+b2iHvvdEx/RMiexvns8WcN5iu1e6e+a60s8kJ
	 z6FX0XrurKikNOfTIQSoBguOWDL8TfDy9GCfNbfilZ02MuamYrJ8dtTLyNUqrB+gnZ
	 ZbMgPYAZs/+6472tBJL2BFuiCmETXTMQRjzokb8CQ+7yAb6LQfK4PfMUTp1vV5HLAY
	 Rl1gpkBrm1qLkSs2LaJ9tB6ojPmN2dvp4fiJuMB3ffJDZEoV3C2orQpP/0ziG/vbz0
	 4Fb/9T/FhHf9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A569C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166635785336.20313.5577872963694515007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15eac04bd26d46aa376918222af6758138004ec4285c31f15f778cc5a3466666
Date: Fri, 21 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666357853
