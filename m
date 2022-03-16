Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69ACF38C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647436884;
	h=To:Subject:From:Message-Id:Date;
	bh=DgF3Dj2p00btsZJkgjq30uvqixYYIQwf4HMJZvfgOGo=;
	b=H31UMWKYDFOW7v7CxZG1CZpd7l2h89dRbWicpd8VETuC2Hp63VvJjc1aFu4O8ymO
	KTKNcpcraVicSI51iQwLFu3KU/fV9YP6SkLXT7Kz4o3q+m0Qidm8Al1Shv/r3J2OtxH
	j3/+IWjAlhosS+UGtiYfLvFzeUoJ2AUs9/4oRHbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647436884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DgF3Dj2p00btsZJkgjq30uvqixYYIQwf4HMJZvfgOGo=;
	b=EZwcUPnyM7QBdNtfLfdhtU6EFEx0G3rZcGnZ0Xxmk8UzZH9X22hZ9YUikElfqISj
	lpDvikEWEdoev1ng7o7jfV6wPfY3O0M72xw11laR6K6osmHxaViZpaWrnaAT9y61dR+
	SuGA8qDxA6HP2cBbsxtXVsD8hUUxDRDRNdWXnkPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92e3eb6c-aade10cd-2fb6-45ca-959b-d3ac5d2374e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60191edeabd363cfa309228580ba31e1a5ad2425f00dde4655dbb203b9707348
Date: Wed, 16 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647436884
