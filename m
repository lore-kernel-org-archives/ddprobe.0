Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD617E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647174984;
	h=To:Subject:From:Message-Id:Date;
	bh=KrZUED8klg2ar4IVbJQgK1Bxarmsko2vBqDalefzaBY=;
	b=lU/gQV7JmyUGhYsdy7c4mtTbhSiBxqjxn0Ft0oIBT9a+ypXjzYuXKM5GtWhTabdd
	VRdSoqyC9Krb+TS8JeJDEWAByRvlXbMp97y+FOt64NFqQgrYLk7qQfgm4zzAEgHajFG
	Vh3b8gb3Xh0n+Oscq7op60qYtGDocEgDwqAjcwy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647174984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KrZUED8klg2ar4IVbJQgK1Bxarmsko2vBqDalefzaBY=;
	b=cDvS1xQ8mFsI1JOV+Dw343hJUU12XrriAf96D5XTOR4PL3wFNLSY+yZvNytUZKWG
	SwCXiTsHj+9voES0Ey2+3faxpGqaamZD8486ylqHoMH0DbI/OpUa+t9RKTQuzIlJJS3
	KYeMxRJmW1AHrx5qbsMtUkAufnb/h0XJ5DwVHzZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8347a492-6107ef46-7473-41ab-946e-7eb3c6c1fc5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abf683d0255617031ef69ab8c3db7844a27e453004dcd75d6db3ea779a8ab64a
Date: Sun, 13 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647174984
