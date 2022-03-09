Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A577C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646830885;
	h=To:Subject:From:Message-Id:Date;
	bh=8BxNksf2yyhkpByFII3d9C4e51lU22rLAqtnVTDRueU=;
	b=FW+asIpNoqRfEhGPHELV/3Y0LftBiIX7/2pOrhGmQFVoBCjPUxCoDiVjaFn3Y6Ju
	P2IAjCgsJVfR6EQE79VCdsNY1cxuwQaa6I2ec/ktIwguXsI3j341IRzjucqwnomzowJ
	GjJsGylXdkb88OwWgoh14oG+9xSZHSLSKAizyFm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646830885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8BxNksf2yyhkpByFII3d9C4e51lU22rLAqtnVTDRueU=;
	b=QdjH1kS3rIWcCukZYCtkAq6ssazvwhlBbpgJgPi67Ztftkc+fsyP7Kpru0xdzu5w
	lwgzCAe1wqAvL3uPQR3GwA+negUffe7jlDyQG/ijo0+2Q8FB1WY4kwouv3J/4DANN9q
	I42CWnAHCGuKeY2mk+p1MkFbT2hR2ubvMmofvMmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ec517fb-4689dd86-3a24-491a-9522-46302f0326f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8543b852ab742039d2b05333195db57e16ffcc4bc501045c136ad66a0c22aa25
Date: Wed, 9 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646830884
