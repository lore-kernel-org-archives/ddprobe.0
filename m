Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0E91FA1
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 05:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA566C433C8
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 05:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692683048;
	bh=OfOZIhy2ieBw7CzHEYztGHNlJfV4NEChROqtL1hvCsY=;
	h=To:Subject:From:Date:From;
	b=dy3OsyFVYfCGECwrzPEtdY2ZU7mB+zhoyOmL90GQHgDrD03ReXJuOpIzCrOUP4CfK
	 ctrpMjUlolxTObt8aR2X/pdoCRe0GUC80f2ExOw/GuJD+mjnd+v13xWXUhDp+t2jCT
	 PbAObHxTofw1qgMafnFKyYszzREQ2ZOFw1F9bJcsJCcO1hqJ+ecLO+sdn/s5gfo365
	 4pnOO5MKCAktxTslXhpVsZ3+EjDUDV7FysuvewU9zkW/rB1pFTz+t5wCRb9Rt33+j6
	 motjuAuVatq6u2Dw4W8tr81WiUHsUKac1omeCOh9QYwZunpiqI+ODbUPXXagjQSKFa
	 0+gnrpzzZZPbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB167EE4996
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 05:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169268304875.31381.800444359058185114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c06edf9fcba999499b5f1c2dfcc69536315b88647f1ab0907a2dff7dbf0309
Date: Tue, 22 Aug 2023 05:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692683048
