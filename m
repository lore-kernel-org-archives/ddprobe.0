Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4EB20E4
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651769939;
	h=To:Subject:From:Message-Id:Date;
	bh=mrIrPV4HDfSAFNYsZhOTkutihcnsVSHSJr40tIAL+Tg=;
	b=YR7wwIHGUsRpzCq4QLdm1OJcF9tJI4WcZBqjY6EzlWNzMO+W6x6mXaleZWJuskNd
	gYRXl1yJA0MGNGxsWe00s6ef4FiBcJaujxK5Wd/d7zCvlAfTr1YtIGScvXUdMEoIct9
	moLMhjQaon34jWeVVk85uoHRbVrxOfIzw+Ku2zF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651769939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrIrPV4HDfSAFNYsZhOTkutihcnsVSHSJr40tIAL+Tg=;
	b=HMbV+yW7zdFVsvaF+PLEHs+QynQ7Cmv8YCgRnHW/Ae842G1pzNU8/iINA/1wispI
	AatyTBY5Wy2rjVDkWI9Pq53rRt6nFem1pIHr9KEkpQIbg5YybtgQSxUunLf48lI9Gch
	3GJp8C9A1pfMDmz8NvNI2hA0StuGFq+lYDnHNc0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809529117a-817a8cdc-3bbc-4713-a841-4463147c2768-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a75ff90fecdc93a7c1004104607ae3a6ad42d51ce40ba38c10e3c0402bfcd3c
Date: Thu, 5 May 2022 16:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651769938
