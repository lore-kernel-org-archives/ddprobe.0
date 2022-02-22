Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 868B07E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645513884;
	h=To:Subject:From:Message-Id:Date;
	bh=OWPkX/OqsRZQgKTir5wuDJDhhqV+JztAt0vX6CglaMM=;
	b=cdb58faxVio+pN4OopQ8EyCi/Ec8wMJCy80LOgRe37rNCUT5TGSxegpUifdHrsXE
	Z1puW4gB2pr4ygYTd/GNc4GD0iXUEBARzA1rFkTaUOySy7Itt0a2lXPdEQ/luLxFbkd
	DVv7gU2PnS4DX9Ngx39MmUvXlA0qO3B41PATvFcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645513884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWPkX/OqsRZQgKTir5wuDJDhhqV+JztAt0vX6CglaMM=;
	b=cSJrMmGTh+9StsqQh1uIzrDjAn2XJ8vtcxV/QaT9xFOgxcXnkqW4lPYU6+pOSZjI
	r8/9qNlWXZr0qIDUGGCG1RzhG+uIdn3g1i32Y0fLN7gNlWaY3pcCP905QvJP6tKatFF
	iMr0zTlGkg8FZSduXrB/y8FpDdNqioX15a7ckZac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20454459-f7452bf7-d957-41c7-aae1-cbf12823285d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4def41a84becdc77f7bd494d5550a75d52deeca7b1ddb2189989fa57a9a2cff8
Date: Tue, 22 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645513884
