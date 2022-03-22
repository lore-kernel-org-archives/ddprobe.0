Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB95802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647928885;
	h=To:Subject:From:Message-Id:Date;
	bh=+PZnrQYCdKieJxvTNQVP57hb7xnfMbkkC91O6zkUGYo=;
	b=QUNL7xWDPRqerTwatVt5QlDLS6IcF1iqoK42orSO7r/iA9t+F8X1jsQmqcSw7WMD
	whSaQLQWNenHDl4FfM+anLG3ySd1GP9dYxOJJ93i2/6JPx6N9z0wbb1H/RvgPN6aUOd
	nOx8Hfr0vvtL+ERmrpG1pQdcbUesRO6dbvnFmxFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647928885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+PZnrQYCdKieJxvTNQVP57hb7xnfMbkkC91O6zkUGYo=;
	b=UMohNrSwrK2zChqr5ZVLANhM/svyDlc+iJPiqkz7NWO7z4sTv1G/5uDlzcECMvhq
	5Er2bAZkU2nqW53kWGs1ecVNXj7cS6mOfWH5+OIv80F4mG3K8hjGN/hA7YsLh0c4f0g
	p7HbOazF1zHWw+exxo/wUTers83QmfWu4ffCmsDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0373e04-289fc6dc-b156-44b3-bd52-1cea3a0f463a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ca69d81ec4039bc7b3f5e8fdbf10997414103d7b2ea9a79cb4773bede2d55c6
Date: Tue, 22 Mar 2022 06:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647928884
