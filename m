Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6900F7F
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CA3C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687653788;
	bh=wYs/QIiWO7qj3ue4O+baWZAO+Na3+1Ij9xgT+oc9FA4=;
	h=To:Subject:From:Date:From;
	b=Ri0X4/3inOvjlFF/3EGEKMzl/nQVWbuFlVBUohqDoD3dqBVEkrwiUja1wdibd3Wtx
	 lIUPYVPFv0FuLEArj8Gk579XG8QekaBFIkFL5uaoR2PFMvMwxpWeRMizpQrMPxzgeq
	 OshMHPPmfaBZclSQyfxJKSuLKl+QMBSszZ5v/GRjeBAOoSDDF9PkGHm4FbTFZ6Gm2u
	 lKmTGIOF5cjpeg2hVvltmaWngU7wA/ssLUwgqPkirvxillCZfifRXq+yek1XCNCGAy
	 fphTeyQXmrqVRMhOxhV1AzOFqfkfCy2vmw7HonRNbnB+wbRSj8h6vzPUlHUmS+Xnjk
	 rJTUvPc6TS3VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02A1EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765378868.11923.15150827139735813885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b684e1ba22efdda46a21371ea5e2174083f4202c897ac27e675b08acc4c34db
Date: Sun, 25 Jun 2023 00:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687653788
