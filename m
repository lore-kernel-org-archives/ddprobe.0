Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B053137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659005452;
	h=To:Subject:From:Message-Id:Date;
	bh=jFWJvlPVtSenJ68SHFBbITbdENnOOHNfEygtX+CDrgI=;
	b=eCPnqV3UFPOKdalwDQBi+WGBPtACbSyG5ZUNnA+luVJ7boD+fkfsjrLEq+8fQn2R
	YstHKQrpuY69FkXUA3sH3B3ZMvcglcULgZh8zVoICrq8Q9o3ec9U7QizK8ehRF1WkhT
	kxLqdhdJd+qtb1RyH1qX8eISlN3PAHddKz/kxbYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659005452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jFWJvlPVtSenJ68SHFBbITbdENnOOHNfEygtX+CDrgI=;
	b=Otdwd7r2xZxSgLsIazI+pb9NDPXh/SDLO6mDRx+DF/Jh6dD2moe7UzhSECb944lq
	pHnQG5Onq9JlfaE126OABAKNxD8p0HiX1QzvKewOEDcmKwhPIeHYiJkf2a5dBP3bbkk
	QDSs+IB5hkn9lfUH+pEgtPu3MeKaOOQ1BbenS0bI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182446e40d9-d79012c1-0d54-4f95-95a2-a8b408289e9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51e97df1bc237f05d1d060ccd480195998cb4f1df3d29ea1c488b630f0f755c2
Date: Thu, 28 Jul 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659005452
