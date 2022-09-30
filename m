Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78E21105
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70504C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664497853;
	bh=flsGrK2If3emMJktxMZopvlWYyp4FdV+j+39/qwiuQo=;
	h=To:Subject:From:Date:From;
	b=L+np9KoK6jXo1dRkcEcLBi08O5HvI0SPunAKF2CRTGTwZ6pvSK0CvNSIqTRNvTDIx
	 vNIihBV900FKZY+193g28n1rZV20N4JqPYRRdXuzIGkgtYSvsyuUePSCCd6YQh3CZq
	 uyNuQ1u1WjHYLUCxZ1ynO6WFRd19ayooi22UE+/49MUUTAlVvt++NYDToxmnBTNOWc
	 FxxBOyKjzb8q+ZAFHM2Elj9qBJYnqvh6jCBs6NDlg547kGfhDYc06fnP0c5imMhkAs
	 uL0rKDaE7ThVxqFEeOb8qMClU9lQQcf5kFqeOnnDeLUskfd5heFvhmQ8NeSNC9HIQK
	 BQ2BJyguts2ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569C8C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449785334.20781.1443289166224788574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f903c3f61130a07b1150374352d767ba413e5592b1ba0e3f2b8c15f4a2bfd856
Date: Fri, 30 Sep 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664497853
