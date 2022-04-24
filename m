Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2156B7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 19:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650830098;
	h=To:Subject:From:Message-Id:Date;
	bh=ZmcrN0roC5+oL3d/5xlln1kjTdM0MTNbz++NrVjUrLw=;
	b=FfkbwUx1M8YoRFXJdJSnObl8Bac7I+o35cDovunu2fNNVXflk25Lob7J63QvywK/
	jGrcOgBMiNeZAVYPpkgGo7lzetCqtnJAnozz8Lk3iIGCFVk01bMdWarnG9zL3oOIQDz
	g+rOzi7MTEHWRyonjOQUGDQyUQ1GLyNSKx6aTFwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650830098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZmcrN0roC5+oL3d/5xlln1kjTdM0MTNbz++NrVjUrLw=;
	b=BKGi2q/vJ9Wc4nuTrRdHwbPg31onRqqoLRjsUOOjblqa8B0ao/0nlb6zJ3nO+Oev
	pnSI0d2VlLz9c88LAcD7Ac9wUV7SSG8ilLnqnTVR2ol/iFrgs51KQy0HDOUXVG0EF10
	s/QaFnAF6uidG6pXwhr6kD+oPISvzHdH6cLoOrW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d243f7d-1d69baf8-ecc4-4517-9702-6ac365afff3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d3877e2a1ae396bba5c48edde34ef397bc7cce6e3c2e0514117be888e20e6d2
Date: Sun, 24 Apr 2022 19:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650830098
