Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C7F4A24
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659109853;
	h=To:Subject:From:Message-Id:Date;
	bh=HPUsqm1brqq59kzsn1j7e1TSMU6TwF+lC9ZzZZyWxl0=;
	b=NETpm9eiUBpJvprWZHpKu3YVLQeZZkVwyp/WG1ZM/g2k8QJDg5K6c+aQ8E9p2Sb+
	x59SD9L8xu535sL8zG5P5y0A6fL6mTl/nqkTJuc8nGe1DVEaotKdfrNX7Qqq79FUoxK
	mnbdpb7GDx8BNMevBODwOSIhQtLCGhML1Ouy1cbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659109853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HPUsqm1brqq59kzsn1j7e1TSMU6TwF+lC9ZzZZyWxl0=;
	b=QBfibhoHhrCAleYS/S2aUnw3vILRQ54VUi4pb6qLYHZBer5U8BMYZXBi/HTmRjCN
	FqISAr6tTM1y3RNIiP8T+8Bwms5K1ZGz72F3RAzsLO8BiAK1tJI4pVY7JW71LAE8mNS
	A9/HdfwVDUvu3S2+mDQlAmapA8mVG8IwDIgty614=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824aa7457d-5d516460-b7f7-4f0b-9ed3-7550b4c1b8b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c935523a349d2b2ccf81f8f4953f2fb9d6cca1ab282babbf5709ff5cd10aa4c
Date: Fri, 29 Jul 2022 15:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659109852
