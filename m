Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035B815C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C6BC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672546287;
	bh=bEJoGoW+idcEoV+V5w+wWaWS3DMCpn6SGVBeqMNj9xg=;
	h=To:Subject:From:Date:From;
	b=ECoP/wxgEqLlM4wA4F57TScNwsMfh1lr1p+j6Iy7xcEcApY00rI/hAmq4rBOopCQS
	 /yrD+rq2BeB98S973hDg2SITKtAHofthplT3XJ/IehJFxjBYKOz8Qn8I6mMI1qcI28
	 Ondajm6ymr/yrmgFinUm/4JEWQWSmbm1Ehy+grnuCr9wNnDfA3C8V9pCkiSMSkBA0m
	 gvaJWdS0e2hM5Zk2d5kKxT+HLoiYPwyZxhfm2jc4RiD4RhSllGoKJLD019/Jdnd+A1
	 YdoiKs/gjDuIyEIwjbFY5Ifq1PQjni4ICUltIUAeEZseV5+/zGgRR2/tOpaxbds8Nv
	 pJrrNixjD7kOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72CCBC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254628744.24304.16846876067846256474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e129859ca2ce311f020cc48eb1d860096f0ffbe2ccc553a7fd6f09be8a1e94b3
Date: Sun, 01 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672546287
