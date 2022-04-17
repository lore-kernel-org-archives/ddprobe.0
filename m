Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1120D2C9D
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 21:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650229798;
	h=To:Subject:From:Message-Id:Date;
	bh=RgumC6iLb1xIYACSIk+7ZaDnAWrphxOL6+Y0UYJguJw=;
	b=a8nj5FxTXZq4ZkrzOpR06DxJ0mECvyXL8nfmGL59FAOjXEI+8kd9kJEXgtRvuFA9
	wpatgy1rLc39LByScFOR2Q9FOU1H/HdWIDRntv6ssrhV1dv0MB5wfPTFpY/FcuskPsZ
	94+19VHhidYV+7UmR4icBytS1G/yk6M981aGgnpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650229798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RgumC6iLb1xIYACSIk+7ZaDnAWrphxOL6+Y0UYJguJw=;
	b=LiDH8LE834v4iSpoV6oMUUrUlsR/F/1XgP3Ouhsm/mDyHNdam6+C54Xciamax9Nk
	nnyDtvklFN4iINzSTQ0p4Bd0iE/A+VaLPn8GNGzKUUQoNJiAGZYzXLgln1knC7EBGHf
	LdXbO05H87qOmixLdoy727x3xGPvCnyaV+MXEXaw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180395c65bf-4ac515e2-bb32-443f-9af5-d9551626673f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6fe9ca529cdf89505b3d4b6b9e54fc6e2bccf8179a9890ede315fe404989479
Date: Sun, 17 Apr 2022 21:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650229798
