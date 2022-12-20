Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E50184C
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA66C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671519687;
	bh=IXa6X8RZ59iDEc/+0MFu3VsX0WeyRCD8Uwv6Zs8jEAg=;
	h=To:Subject:From:Date:From;
	b=XeXosoo1cTiigYH/dEo2+Iyiemh6F5/oiXsVLLXqMyDGJ5nmEUXvN1S+iN62Scc70
	 e8dFBOEAXmoofUBOus57tsXI4EcXTTquGDlbkdB/96nR8EO2//slMm4PWZtFoV3NI+
	 XJx9yegLDApCiGdBOkUHvHVjXfJPn0AoAnWTU2cxL+QB/EyjOlc1YVYcTsw47PrrNt
	 OAeHcqdEqO1PIw4wZlnSfMBd4XxIsoLLqELjw86XNBAGccDQaccggrjkWAUg9xUFsN
	 MySfRoDFEQqapjQ2p8aYThJphcyBO8rbU+suzi2hm5GVkIVJWKRGFBH1+QcVFJu6Je
	 oq1b+GlF9ValA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64322C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167151968740.20259.11722833021251751812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5625e9e87f49e00bdf9bb64d7599fa37cebe2ff4a7b45b1724638dae20bcfb46
Date: Tue, 20 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671519687
