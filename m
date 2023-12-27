Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0002A4989E
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIN/tVYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C7BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703720296;
	bh=ktNCdTyBIhPBVvNSltp6jvG9GcBFcmU6O76BGNHR554=;
	h=To:Subject:From:Date:From;
	b=AIN/tVYn0ZgJLHtopaMYnR0uw0ScyoXZbzoWyOvQYgD2c3j4+XEPwWSHfI4YKQUyK
	 vGRf+i87xcoOqGrD0emfvc60VL8i1S8FK2MVw5owQt0n/k75oXub/xtnspcJU3xEI3
	 KTfN1tTubvjkOudRrxcYLnASOE1JkvDEMS+KvgobsgJR+E+nM1Iig3FVxulSc/8Bei
	 TLvgh9uYg/04KJbF2D1G4pWFIec6OOrhtKvqFEmam2VtE5PnrasWouzWG1vZn6V4D7
	 kDEebJNwlRXn1y7DcGJbP6wJeCbZz8Ma5etuCZgKpd2Gss5ij3kBodyuaMXv6E30QJ
	 i7QC0mwzeJE6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 685E4C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170372029641.16011.1248050164667798680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f844c403b63e99cce8aa5f197ea79706293d181f161705c01353f43aa88d2e
Date: Wed, 27 Dec 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703720296
