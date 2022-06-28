Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130923D98
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656440812;
	h=To:Subject:From:Message-Id:Date;
	bh=sgUj0uwu7zZTzFgjXRac4f8B5o9uiuHLwfD28xtREGM=;
	b=UCHQles7QMXmlD1lv59r54RrDRhCcYNSh6CjcTPapV9bRXgVR+cLh9/SPjg59+ya
	FOJBEn9OMiyT4MXr5JknP5xT2ZYtJg3ExkHQfg1z/V9hKyvJysbfqyOYPA2akhR6jCw
	oHU2xXBYcrTRHebRX6/RYrWrrXOnqt3dr4QWvKyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656440812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sgUj0uwu7zZTzFgjXRac4f8B5o9uiuHLwfD28xtREGM=;
	b=P9DohJOEGeX1K4CG6QLgEPCtUehoEypWPDOBWrm2ItkzZMg1mZolx5Om5pVzXGDF
	HOoKCslEOJAUat10Hld0PpGOquKZ/7m8ug0mxJWuHAfK9gQ9JGau1cTAGeUx/8xGlyB
	orrJdFGMldjRE4c900ZU17GdubjxmcqnISIsvmvs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab90f2fe-747450cf-3348-4f41-8994-c7395208b206-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af2dfd7c68a33dfd3f0b2f5f47923a89ec94eca29f3c3d0ee74d1ba5a6f0fc0d
Date: Tue, 28 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656440812
