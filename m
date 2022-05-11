Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0502F33
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 19:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652297339;
	h=To:Subject:From:Message-Id:Date;
	bh=FggrtUpB/Riv/2Fp1W9v/FrWZHaMJAePblJzRGNPyEs=;
	b=OsOzXFEtGKwbRWnyGr2NTfA2Jz16fVm3sKhkLzfLeHDn8w0FSpdjgy83qDpoZ9Uk
	SM+rkfzWfsIeDFY+5Vux+n0768XzGdGsCkS2qyj67N+ahRzV+EMHx/P0acyHZoMoXew
	DPmJeDgPOC6nAPcHLEY3YnM3pFahAMUg1KsxhAyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652297339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FggrtUpB/Riv/2Fp1W9v/FrWZHaMJAePblJzRGNPyEs=;
	b=fzta8A+jYH9IvthM/n63EHeBjiFZ0OEnB5NXmNvchaLOZj6NP8amIEx5n3bBEoYQ
	bHoSrytYEcw5JHHJdOpS5TBRslanryaIvDm1BZJkW/5brm+/M4crV3vskifjNQ06YgV
	jbvbJwBAUMSuNWV74iPZins3c38ZHsO/iGTnQhzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b49891f5-b35d2493-1382-4689-9722-5e70977a856c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93fbeac1e5d785657b8467490951252bb2289e592df69030077f9eb1045b585e
Date: Wed, 11 May 2022 19:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652297339
