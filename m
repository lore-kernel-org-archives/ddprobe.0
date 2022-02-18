Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4071B2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 11:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645184485;
	h=To:Subject:From:Message-Id:Date;
	bh=69YwDwPhiARGABdOPMCtoL2Maf12KbHjO1Nf12rCPYc=;
	b=TY3/KBc7rDlB99QgTDtMLBXYcP18/BxNfjktK8BydAeZhs/r0HoL069QVlbW9Jve
	bCG+SMgffY/b5bIDWNQJC8mNlP+0X92YJi2AGTSnOCMHCV/59X6hTEj5kets7/B854K
	y24qxToXAHqDyz9raNx1SCg2LaVf7ay08PuudUwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645184485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=69YwDwPhiARGABdOPMCtoL2Maf12KbHjO1Nf12rCPYc=;
	b=RZ7S4hyxycMBTEoC+x/5CjMYtB6bU9/0GN+ab6Qhir4q9teaOLmY13VFBYR6fF6H
	sMsW0+sxlBb1+8oL7mBIla0ejmIkZcoklTbMoO2E/Vo/ZUZLO9qMcAvCSFqJisCgpWl
	0l6O8IaF6GYk4kaJofOhxtXQWHXs47CiNu1rV0RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ca3057a-86ba36fe-d7aa-4505-9117-5a6e3e2e07c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 862e040e7d3fb4f0d6c281ef9b9cd222d6d6f074dd55c2fcfa6c2fac07787951
Date: Fri, 18 Feb 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645184484
