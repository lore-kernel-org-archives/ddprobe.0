Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A2BEC0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819D9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672141287;
	bh=4qVZtMwUqw8Uy7Q6fHgcAKPesiEyq/j9lkDWmJW6sko=;
	h=To:Subject:From:Date:From;
	b=AWv0xgFq48JCUR1yxDMxHodccDnZ30tYvv3maG7ZPTBJcsKPRzvs5wusZnMitO4Nj
	 VFPqZQUp6z7cYD2BtAa/O1LCH74rW+Boo7xom7eluKtl2H1EBglspp/40c/Wy+9/aS
	 swNhx7WA0xKADNTNTcrlkwYXiQZS9ewkBlxdVtSqsKCvpExInjIrCfMny58SqGB4pw
	 uNy2vSnVBr/+oQkK/a5Zmlqs/YG0flGmyuJ9ab2YoEXm5W0c7F/AclDqdKYJO3TEKY
	 UQZtg+2NbOTosvno5Rsp9l5emYa4xlCDvAFF/SPZ4zypIZFwRNK9zB3ie3ia+sDF+6
	 dRzb+OcanPbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CC9C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167214128740.18927.15682896927872672668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef4ebb1ac6e5db2ec959cca95d57bcad17ea2db09994e878ebf4d2ed9f85013
Date: Tue, 27 Dec 2022 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672141287
