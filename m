Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEDF410F7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DD3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664435453;
	bh=yILB1iGZ48XkJixxzCYuRwuhFRxSR8xi+V2/iJ48OaE=;
	h=To:Subject:From:Date:From;
	b=ihIHae9O6kV0AqQLOooHpQv5EKwdjqgQmrN9AcJPns2+r0Z2+FRRgW6YuOKb9H9uV
	 2yOTRSTHyG3i1reDdB0DKWrDAtmprxmATQkodSGaWL2jcB6nRVvRiO54ADKalzjHnw
	 /YlBdSrg+UNj2DJA+snLk/ZFra3Tm9fg2M4bPGM3pyYanOg5nyPHcAiGtDJFPP7Rqd
	 64fsraFrjbTLKqDWX8+ygk8Q/R/G4IFB33OrJ5cOxb3cn9r20yCXf4aRKA06kYNR2o
	 2PlkLs5zA8mUip2qYMNxcyLI7xCNmC02d07ASsiGteWNlLKl6Aui/ghexxUbhmS/HB
	 cJ1j44aavVKLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B84BC07E9D
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166443545336.24164.5745609309148608195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7d2232f250da9ceeb98d795361646ea628b6b800cb0612e66a65ce532e65ed
Date: Thu, 29 Sep 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664435453
