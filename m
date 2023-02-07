Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4A517F7
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB05C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675748165;
	bh=hfhG4qhrrkG4aIO7/PmTs5tfQ0gC7ym8ZEb2w6L9NGs=;
	h=To:Subject:From:Date:From;
	b=Lk1/iCEXAlh4gPWZ+9mvq4mxqXmuS90zSqLxzoyOdb2gnmnt3KuigEicaPouJF6jq
	 EPWS05iOUrQ789M8MFnE/7A7Gefzj7QdtifVt+k6x9Trto9OKYNs4r4k20dRxpubQJ
	 mtvwwinOU2xMoDCakYK334+YWaCDT3mTfQHmpBsUO8mYc2fQ32w5GNDcGGNi1AlLSF
	 edxwMN29+MQsC073lrLNMdSwvDEBlBE8q0v2/TPDAZUz+6mN6fTIHuREijpEfEBezy
	 SFpxV0bj48aSXf2MvkHZntR8Ggb3fUHRBj2kytaUeL+jDwrHMGTY25nlTFs8fPJSIK
	 2Pqhoh7WI4hCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E07C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 05:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167574816572.19627.10380244396708627345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d6a9106c87bc52f2312faaa113cc55ac24aa88a96ba37ef79edcc229f4a526
Date: Tue, 07 Feb 2023 05:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675748165
