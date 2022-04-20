Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6A13184A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 12:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650457918;
	h=To:Subject:From:Message-Id:Date;
	bh=FGc6qPJcoaICv240GMVmPDt3c+/wvde7HaN/MsGfUCs=;
	b=WPuB4z0EE9KcXiGcPc3BwlwJGIFt2++IntvVVJTa4NFneNdUWOAxFBUbIjkTGrw0
	AMe7CBmCgEaQaolfZH3z5JSBgBKmKfs3Npgk40Kowj0DwgfbPXS71KqaUfsD2DGngpt
	1SKqR7qMhgGMuQJmAjUBJNEzIMZ6QZEaHddOu16M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650457918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FGc6qPJcoaICv240GMVmPDt3c+/wvde7HaN/MsGfUCs=;
	b=TGR07757sDdGaMXCpu9SjPPvNs/W7fjaf5o2uA/C1fIaRoevvq8gIi//vALFEJGx
	dQ2FvI05yU8fVKQ84gjY/cnJeBr0PlwAEH0oAMY1oXeABbCayRIlY8YkoF2qahzGYag
	oG7Wx7/CLFbMiHRsoZXdE8UBsgn/5gjq6zcf4X7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018046f53b3d-9b29ad9c-b746-467e-a9df-b3225c90f044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae509bf19f9b1040242a064d184ced0ddf799a934417fb3350cffe471498b815
Date: Wed, 20 Apr 2022 12:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650457918
