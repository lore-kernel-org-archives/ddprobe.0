Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3181728EF
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 16:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653753659;
	h=To:Subject:From:Message-Id:Date;
	bh=iEkavy3baO4+vscuThrBlrA3eZQFUPfoAjb8hRVCM4A=;
	b=KPWUZF4uiRrmWcgfWs81GkoHH4yyBmsL2HMhy21a2qXoBOZqFnx3F+NHqXxYXVBb
	lqk0uqlKAA9DG85lzMmlDdGaU2Dmv+AgvwQjq0rJjaL3jyg3it6ddPIGT24qCYWVZsq
	G4sx5s6/K0pFL2cI6ajWBnNG7ba7MyB/78aaA7KA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653753659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEkavy3baO4+vscuThrBlrA3eZQFUPfoAjb8hRVCM4A=;
	b=Itpc7qPhhrK4OjY34ZD0hqoFumkTBaXZIyjLa1AOe+APj16TjRJ2qZdWomeMBWOF
	vGRV2xGuRc8EiMBZmsm6mTUWJNGlx6l3R+5A5EEWm17ItAGN1tkVfsJZ+JMHtWu+cS3
	KNKVevEwTa6cmCQI6KeiAEjKVtkq/2o5q60gMG84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b663f70-2d6fcc2b-d758-41d5-9a13-fde7e8c4c4a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2cbce6e744f15cdfe460ed164cb8a9dc03e2e6a40569a3e8a165e95a34f9e83
Date: Sat, 28 May 2022 16:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653753659
