Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B351631
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5Z9TFW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92935C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703207296;
	bh=E2BEkddBOaLuLsStud1aXjoar948WEhyiROe95ntRv4=;
	h=To:Subject:From:Date:From;
	b=U5Z9TFW3klZXWISD2npQMrptf4b7jK6cLJoaPEpXE3w/Po4E2BSMZ7kxVmNuhi+NU
	 OYMGT75R7asU0Vuo1GXoN69H0BFgNG39OVtaIt2u6lNwilYLcsuXRJk5Mk1X6dqoV+
	 QFoQ7ZcghkfVCcE+B21JoK5Rq1jf23jVZ/o6Uf3PovJsyty0ZYSFY0PGdOVVtBScQH
	 K/E/qld8y6+kN+eq7QhblbGGqiipILTxH89Thji413UU0jl7HDl3Vtv0GHJgs8XCym
	 fnj06brrYQylsop4QXU6nV865srm52V/JWnJWuauXsLi4/X42yeb/hE+813S5gatK7
	 bKCecuC/WvWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72EB3C46CCD
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170320729645.4471.9092492449278447154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71309151840504cc2416adc4f38858ab48bf30626087f5d0f6cdabd8a66eddb2
Date: Fri, 22 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703207296
