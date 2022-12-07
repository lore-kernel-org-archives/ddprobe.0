Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3A3374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAC9C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670382654;
	bh=XhK68pofe1SrbilRN1Js0oRkvpjeQUHctCwZw+/zwLg=;
	h=To:Subject:From:Date:From;
	b=Y+ZLhj2urowyz1SmwQT35bBNWn+CBVX/PpJm+6cIqUjI3GN/6x+4GQjeUzCAcG3Cd
	 KL1DyAvYcmQAikecVr/JfUVGt5oyJgHx539eO2KFArl6G6Iqh88DhuBeqTFnq0vuX7
	 y84BKFKiIpilivXhRBkhgRMnf1nvCA2HLedyS3w85mozWhrLBztCFCHc9biqXSb8kW
	 DdMBnEwzkuNNINpebQlWVkhvmDXjW4Sl3NMFoJwLODp42r9uk3Nb0Km9DX3GFk3Tky
	 Stt/Jw+fzJIEBpbk1lGDM0wN27frgxW/mx00Ix+FcxfK7Pg8K4CuV7T2sTbIJK3o7/
	 Pp0DX39Z3In2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FC8C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038265434.22632.3394218742779599880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75c416ed5483df9402bf840cfa0094e7238cea8ad7a1626d4b55d5b96b54662
Date: Wed, 07 Dec 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670382654
