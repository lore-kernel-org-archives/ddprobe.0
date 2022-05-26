Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73ED41855
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 17:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653586079;
	h=To:Subject:From:Message-Id:Date;
	bh=Jgh6nnF+W8SAyoWhCdTCnu0Z0+IaXWjg0Ojggp8orp0=;
	b=DpHiGDK/5nttwhhbAs4H8gUAZH3DLxm4+GO81kLk5cJxvNRjGyZP60t2LfGwnA89
	Rkfw5YYsNcchzBh8xNezZAuVq6b6KJWd7AKbsebFUTNCBoctUfOHs99qs/9X7DkSMdv
	wyAh7hHiK42GrumPxgCfIkn940nuRdF4XVmlf72w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653586079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jgh6nnF+W8SAyoWhCdTCnu0Z0+IaXWjg0Ojggp8orp0=;
	b=JxT2i4plt9YrtvBu1itBnxAFrmQTChZTsDjLr56EkUIjEFoIpzwoCCBGGpQ2NLjb
	K9G3zjBRQD+u4CfdULQgvDuHs/nEUffLKdqXYQuniTFYg7YVnewR3RF/i3GVPm7yAzC
	UxM/CU/mnMIb12MEe9pwHfOUIBXNIctTtKoOnZfI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101692e19-268aa1a0-c71c-4de3-99dd-8cdba5a704dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42773b41c4380147b8fe4d8aee07fd8e7a1fda3473c8cd6299443fc9822bfa98
Date: Thu, 26 May 2022 17:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653586079
