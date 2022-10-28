Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE5BE818
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754D7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666923654;
	bh=i3Hnivnpng+6EwXEkVAP3wUD6CxvcyMww71yBV5Q1k4=;
	h=To:Subject:From:Date:From;
	b=HCobbflKtG0mhLsfgMh2xKbYAj2diW9lL+gQmAfTuHrX/X4c95agisQxtQJ1L0pDM
	 w7QSSUfGEoVh7c+ycmO85otFcSTf6b0Q4rRDiA69TK/r9vsnIl4DItNWvEuNIF3CHg
	 BqRHPHqO1+3ha3Hipc8YOtRb7/GdKDSuEYx+ct+vMjuhZg4nDyctkLPTvOT5JSEOnH
	 fobUYH0xAL3vY1HAAqQaWEBdtvHAIrARQoytZrpz5LvEUB1Rq9toU99Hc1BXsZWy1x
	 z6yF5ctUFVnfjTSDXAT2XZV2i3ab5Y+yE8idsE7/gv+Gm9GBZzZo6ach2Bl5tNqHBg
	 uDxxxTEVLkOSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5849EFA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692365433.29480.12879012057437364491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f5b2172512e856958216a8c033c5c940d2054b775e4aceb69ff0e3a15cb231
Date: Fri, 28 Oct 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666923654
