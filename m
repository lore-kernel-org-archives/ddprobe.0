Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2994681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657724812;
	h=To:Subject:From:Message-Id:Date;
	bh=bBtKJBiVlW6Bu2Qj8CyI2WMtpjIrbwAUkhTfMoNmgfQ=;
	b=WpIp1CC+NgBecP6wqX9wiKiUSSJG3dxamRp7yiZU4r7BmsuFXiaDG59tF47Br0ZN
	1ndqn+GGuwY/8u2swPf1paqcKbjwt0Dfxc32NQu1mX05tuJiceixfgidJS3iELMf0K7
	GXZlsAyERGFsYTz3L8cMLn2WLQs5qg6z1ilubn1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657724812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bBtKJBiVlW6Bu2Qj8CyI2WMtpjIrbwAUkhTfMoNmgfQ=;
	b=W9PabyPTZZpwuxrwn+fTtK1djM84aMppj2udoQL6HEetgwAyDtIvMycLCs+s58vB
	7M1qYk5g2WErY/m+sB5VUXdFmErVrEk8IjMPbxRWkRIWxIoOAFLoZGGmD/E/Y+006IW
	Valyp648BnWmdjgLZYz7dL3O/Kpa6+ng8D917qP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f8193c09-b07a81b0-e9c0-4393-a3d7-4877613bd7e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6459a6a7aad17f2ea4733e465ca6558fa68e0e063d793da20011979180455a2e
Date: Wed, 13 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657724812
