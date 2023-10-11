Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5881CFBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifsnGm8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8966C433D9
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697018828;
	bh=Y4NTN6Q0V6r9xRxHThjN/ebaOXNkmKhEcznqadi48gQ=;
	h=To:Subject:From:Date:From;
	b=ifsnGm8bab78JhsGXCIN1icsfISk3dY20DzSZqDJ1rrzrcI0pe6CTd3Q9NhI2IgSV
	 wyVhHbOPuUiQ6nU1/kOh2eCjhD2sklYXvsz33QCGqdYVzIKO/MdpAOlszprl6GxMN5
	 5rOPOAKxdh+PPADWH0tJuG9SobHv7rtAJBR1Nu/2UTWt0VTzuR67Eb4V6GHLmxUYSD
	 6Q+AIHCOO9b81mjB6EZpYkB+78XYRu/Y3GYKBmDhm5Bqx83OnOv6/KKO2pVZUJdP7C
	 NX+1k+lqCfczB1DYzm3Weu2x2sm5Z85pIsuy9YLxUi+vFaCpT9eioj1FgFrIgkeu5n
	 wS2ek2mC2Ky9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB30BCD6E58
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 10:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169701882869.26020.14308847938766245705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb06b6762edb7deecbe1bb4edf347561df4276de4e98188fd2f781914b2ae85
Date: Wed, 11 Oct 2023 10:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697018828
