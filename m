Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE70433F4
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 16:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652460239;
	h=To:Subject:From:Message-Id:Date;
	bh=ejbkT/0df2Xr37rjfhQhaXt9Xd3dGp4iDVk+a5+fOLQ=;
	b=fwo0BaIKmSvQN8F6R6KfpG3A+Ur71hFWuZ5mJQhXTie2fNFEyvfc0+DRoG4locio
	1FRklnH/dDHOLTsS+CisPc+MX2W7JMNpgtHzUr5N5OjprCloiclw873sOXDR7OriK+A
	TrdTAAgxAkGYCcQRptr0HihEipQinM2jZmR4Y03w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652460239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ejbkT/0df2Xr37rjfhQhaXt9Xd3dGp4iDVk+a5+fOLQ=;
	b=HJszYw1eJb8EAhwRLu+JE7Z573o54iRwL3owxoA0nxwvJ4RVaf2Zlm+L7MitArP0
	6WjsLrInNzoQnTH4/36xaqvTYuTNXitIsu/uSBrt9S4uXgHUwc9r5wT89nPfri7hk84
	QOU5Y/9pixKF2xp+GPuEYDDWJ4kYrBK68Ae7YwQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be4e39d5-a6b1ce4a-7342-4c1f-bf5a-5e9cca17f734-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bcf98af8205a3c949e83602fd486373fa4b11a4ac1059aa4c4bce9e27eb6592
Date: Fri, 13 May 2022 16:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652460239
