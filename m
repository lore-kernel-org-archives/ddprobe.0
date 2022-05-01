Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81441FBB
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 01:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651367878;
	h=To:Subject:From:Message-Id:Date;
	bh=i9pdX1DMk1WH9kIL+hGyh7Yk37r3vpEM2MAB860U1pE=;
	b=X9NYWB52/vOALZwmeRvZ0/LOSRFdbKnWg0DB2bXu6jsH+rQK22XnuIjH64sD13xp
	1k6PZNDTTKttGH5BVk5DrvahSy4l4IGj8XyGSjukOLHDDns1hEuoztBIDQKz+MdMZjl
	HkfZfNuMrCpkiCqWuZ+4s2OL5BB3uOGei4VwWSqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651367878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i9pdX1DMk1WH9kIL+hGyh7Yk37r3vpEM2MAB860U1pE=;
	b=DLsT6/9uOGvxFjRIfrnaBfY8HTJE19QXpxEMurPekpYNIu8Br1fWdO3uOttXy7/K
	CTo4gPK9aj+s0T4AxcwC3+qI+HJKrpj9xUMt3pw6RCD3DZr5SOoKibovzeF8G+AFV7/
	obPdbLhyurSAvowM7Cngg4dEMqCfT09B7gH/Y7j4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807d321e8b-afa6ecb2-a10a-40b0-94f3-d5b3a6624ad2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c8cc0a9033ce3dd9de0debd0c7c19de6818a4082f2c467dba0ac22a3bdaa0b2
Date: Sun, 1 May 2022 01:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651367878
