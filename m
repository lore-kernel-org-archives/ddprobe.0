Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9F210E8
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 06:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651212058;
	h=To:Subject:From:Message-Id:Date;
	bh=CXhh4FmG3JOrSQBIjEUFH8GYfhtba4Bc7wByY9s1Zhc=;
	b=DPk1KiKNo+2eEziGogocvh+ME2uVeOli0It+vt0+EiwX3hxsblc3TI14OmL3eMDp
	3FAqRySPJLC43WZHZVPe59WHKJ0a+dSAxTlAOSMqwVJtD/PbPu2wOxb1PAQo95y3dUV
	Z+BCdzMA2RxG0SwFgmyYjADjI7v2C0svEijHvMaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651212058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CXhh4FmG3JOrSQBIjEUFH8GYfhtba4Bc7wByY9s1Zhc=;
	b=C3jLdvyy8YnMDBbzc4XVs4xhF2BeQJVDMkCb8/bo+CZdmSotsLn25YhEAmLHslQa
	oinXR6mjluRVLqCrnCLdbqpfxRvmzoJHIy8Pqat0rGJIKAb0RoG3t4s5CtbHfWiuMUN
	hzTH4HTdMTLsH68adjOH1XiWyyEDsB5F3J4XH6Mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073e87e8e-e5ceadc6-01c7-4f77-956d-aac1678e758b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87e50e63e6f19424ff67ab9e98958112da4a451ba12b5a3596a08a58982ec0da
Date: Fri, 29 Apr 2022 06:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651212058
