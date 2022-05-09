Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1647D1858
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652078278;
	h=To:Subject:From:Message-Id:Date;
	bh=rRgGq+wKVO/+Nj0wmpu5qT/ZeiUd0EvYiPoLNAMHdos=;
	b=bUeJrhJmzz6VPc9KEBooIuMGpG35MC3a0TOSS9jGI3VvvgIekDoDn8QGmuIo4IJ2
	5eUtaVSF2v03fkhDDZarKoGJikLkZ9DbDtSe/SfMJc4P4AWwP/A6gsV16DvKSTpJ475
	Hzi2LrYKzkbDj6F3JRv62PFdBn+TD6Hj7EKQRv1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652078278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rRgGq+wKVO/+Nj0wmpu5qT/ZeiUd0EvYiPoLNAMHdos=;
	b=Kdzj0fX5J409mn1XIu5iFz4neG1Lqrm+vC39Gdc3F38YHHkGasd4IcZJiujtn5fq
	kZeZIHoltJFPKIRnP+QDaQ/yoe4hxaMKItLnQsElcteJ/xEl16p9ZYnoM9kl1ok0S79
	mMZIxAae65GcSowUovfgdrYvHDeFCAxooPpYxRVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a789f6f1-eef4dc19-d957-4822-bd28-0f60fcceca9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b489b71ce1b5b1572944d71e383570f8ce4d880dddee8deda8bc4c4e589999d
Date: Mon, 9 May 2022 06:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652078278
