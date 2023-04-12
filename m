Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E47D33FD
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BECC4339B
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681302725;
	bh=geTqXm2yL+NMyCr2p/pE9FxTiZjlTBa5RtxSZb+HbvM=;
	h=To:Subject:From:Date:From;
	b=hhJTHriPUcKQ1LTXKabhynOG8JtRhL9P2QIYBuw938xt3lT8Ucs/Pk9nK2u5ZSCY9
	 Gtj/+gVorNgrNlsdhPIKfEP11A5hEq1YD9s04a9abJOwFpa6WE6YuQd39Y+4xTF54r
	 ufa8W0r/NqT9Dm33wvYssL6cPMx8bt3fkcbGne2UZWy6XGSyPQAV1qVkwlSu1i+VDO
	 aqeqJrGdMhCoAt3O1KEv8nNaC1/JMRqI2sI/C1mSGm64GSg5anf96i5NbBfxxhwL2g
	 wyUMs2sdWZPB9Ox3GTTNPvZQyATdsK8zadng2ROgVep9CYwFDoYZags3PKAi5Bav4y
	 BSJ9llDBcvYcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0ECC77B6E
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168130272581.22348.10215708315569576611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc952efd3c89b758c489580a11bb277114e7b2ed4db8dcb32b4634a9df20be16
Date: Wed, 12 Apr 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681302725
