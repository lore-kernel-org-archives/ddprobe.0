Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CFB433F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647792985;
	h=To:Subject:From:Message-Id:Date;
	bh=FZmNBgb/1phyJkikIIiEzzZJdMY0UIISiriWnqH4Ego=;
	b=JxTO3BMFRHi0CUrij7nfmea24JY2TLRG0keZFWXN1HgIo2UlH/35cLcq9acx9Bh1
	fPfNFFIk8gQqCyVoSRHnoGqa8rp1WMc6lWkwaFXj2VheQzflS2GFQljrNi8f5f4gnXY
	mHvVFUF5n570kWQEicxWI65D88LrShXIHGlsBqz0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647792985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FZmNBgb/1phyJkikIIiEzzZJdMY0UIISiriWnqH4Ego=;
	b=WslI1Ow1tPIYkWJir6zIM35AVDRBqAKMxw/M8sHj3W45WZzZh41eEEC+/iUcArtG
	rJEnLtW0J3vjNz+kIN9/HfMOT0KNVtovfg3OJ27NkoF6U0dhef7zO7GCi2cCnpcup3T
	mLUYkHV9AR3iSZw1pBQJOKsuAEBuXRquL2LcUUuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa81d92de-9ed9bbb1-ab9f-458d-b19a-aeeb89b3e46d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c387e4e94cd4292f162b587d0124b680978371328d56054658aa4c7eae10abf
Date: Sun, 20 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647792984
