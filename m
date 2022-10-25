Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A6FEA3
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71642C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666689654;
	bh=KzDa0VspKlNIz81XWn+odHPtSGcgc171I/QAbJ/EOKY=;
	h=To:Subject:From:Date:From;
	b=anC12b6dGjzjUwcDCp3oZ52mMg3Ctbsfd1rVCr1ItWMqFD2bjdgJFORpJk4INRrl+
	 wi+PAtd+5x3epgH3pEuD9GXkRD3NIhnMsfxt44hKlpkftwSdB/G18zqtoeSOFW9/dw
	 qyHRERTDsYGcW2NfEHpmH0vVbeypWdKLlNEyIp1xupYRspAg14y9W2sUDadKwHEfba
	 yQ5f0NR/vh4ZDRBMDeoXmoBMK04NX556n96EDxYObt+yhX+UXkh+5HoXiQ98nlf8M1
	 efq34NjQUGImVXTlp8WGRqiubsVNdNZT6jjXAOU7LBsHZKGhJmuBqKMNH6UZCyjUF/
	 /KEmSXq5+WT9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 555C0C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668965334.20475.5988703612015064043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c738ce045f3b9e90ab0b84bd50f1aec33362196e8667c449ff126f702e6064
Date: Tue, 25 Oct 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666689653
