Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65D2D7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659461452;
	h=To:Subject:From:Message-Id:Date;
	bh=TBQj6kwbCMkvHTwBtbEPbcvpidWCvQuNj25qrpQExO0=;
	b=IKqN3HnXVUE15qqujxd2TOZYfmWrjLDL75qAWnGRsruIHr3O7dqHRM9KPm3L/26p
	aVdyZK3sk7mOSG+08ORdWkFneoWkRgVfClgBt/rgg2qIlco6wBQkNMkCqLadc5cER4d
	3hs4sJ48m3GwPr75p5xU+I/ATe7/l6AwMF4Pr/WI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659461452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TBQj6kwbCMkvHTwBtbEPbcvpidWCvQuNj25qrpQExO0=;
	b=KV2OuOdDhoBUl40wxYvZP4XBLMTJbN7998AzfYMPrF/z/aLKePZxuHaFqIZWQHAY
	1Ls7qpsGq/L7MfXcBkVBkQGT2M7A8Iry2t/1zui8Y/zbpEBcj9tHazj3xjvfVoKZ30D
	7eTs9VoplbSePI0mGRP7dzhdwAPl5AK/zkVWfJf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825f9c4351-f755c2d1-e50d-4663-accc-f39d295ca0b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a934257a07685bebff2af0138fe077e7755857ee486827b50776667c5c661f
Date: Tue, 2 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659461452
