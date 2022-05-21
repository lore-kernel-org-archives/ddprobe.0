Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784FE19F
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 17:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653152759;
	h=To:Subject:From:Message-Id:Date;
	bh=TG0evEdMmlRptTN2+DKSGgeNHPcvn40CdtnELBVjoXk=;
	b=Q+Y/ohgqcl5X1BLRqMYb+jL3dKYIWtjTv3Q9rqXa98NBzSvvyKfwsttPE0B6xBTo
	sDz2ReFiJ4hwL7PqYJI8o4Pa8HWRFMcu1D/4BPNR/XRM4iTcaTfoqh1iai/pjVJzbJU
	H/A+vptl48j3pUwm/MNnEujazVY9X/V8mkQMFX7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653152759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TG0evEdMmlRptTN2+DKSGgeNHPcvn40CdtnELBVjoXk=;
	b=JQF24zGRNzALSWlanLw2R3nL19F5lb2d6snbmgKP6uzgj51VDkAUkszivy/9NEnI
	8SUZVh7j+LyQWQhyhd5jBzM+YvW7NkzxVPJKYj1YDZ33camu18ocCRBcbb8tqUia3VK
	1bmdfjAyHLGIxs+u2NG7L04DfH437ZzNBtvsDR3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7953e59-a61c1333-fc97-4a46-aa16-1991d1b71b36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bf159f2c6b4b3d8f1cd89142b6e32afb41f985caccc74121323fc7d8dbae9c6
Date: Sat, 21 May 2022 17:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653152759
