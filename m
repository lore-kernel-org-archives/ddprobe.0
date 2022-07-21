Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C77128EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658398012;
	h=To:Subject:From:Message-Id:Date;
	bh=UQdrWPSAc4/09G7EZDVl77H8zxS2BFWU8xPSdXcuY10=;
	b=LGNEe3xZLSosk4YYP/zWY/HCnoWx6RRKDScnNvNzIwhz3XupThplhegPfcdLoqUu
	y60iVaYqLLH4Z8hEdfI3Mgwjj3uubpiSbYYB41s4o98C3KUJzrEA1x/irS2dJSty2G/
	U5QxgWakJR2KTzZQ56rlFmXL02jdOtUIKs14k6cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658398012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQdrWPSAc4/09G7EZDVl77H8zxS2BFWU8xPSdXcuY10=;
	b=fxC2tOXbdvNfgg8lXwqdyRfdqGCcWg1fn+hSxFCARN26t2Z0Xskse9gB5lqKQEUt
	BopHrIvi2s+P1FmPMuOzjVsvOlo9DaEkgFyyHoQGTz/XsCN5U98xn0CwaTGWPIctvx5
	KaNF9btMP0hoVRv4cA+rkZrfeiAegsxfTB+Lx6lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182203973cb-4fe698db-127a-41ce-a004-3f22c9ef0712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ab514067a47305363759bf3e9f3abc5fb7bb487df87ae258704978f430e37f8
Date: Thu, 21 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658398012
