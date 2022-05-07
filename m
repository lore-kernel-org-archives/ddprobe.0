Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C36A23
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 02:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651890478;
	h=To:Subject:From:Message-Id:Date;
	bh=HiKBrsCX1/HmcVrGCyk6JIm5GGngSfUFuHNfkdag0F0=;
	b=KAwN7tGUBfFvntUzVFck3+ryiiueLqOf7zlqikGfz6p1HfwYG9OehO2j1lYKQrtw
	I9LeEd5HyZ1E90HgbU5AIBBLMxJ09DTFzCpPZeOR9TcA3tQ9A/l/1m6K8VfmMlfw38N
	K1NeSQ1CACttkrEilnEpskZ2LUklhK+EGJSk+w0k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651890478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HiKBrsCX1/HmcVrGCyk6JIm5GGngSfUFuHNfkdag0F0=;
	b=Tn8g8P+CJEyqfFIXPhovSQEakBuMajpW1AlaBlEr1wQg7YOMbqGZ7K+GoJ5hHP+U
	uuabxwOaYNHQ3LYBYa92sIDxila4IcjpD/9POQybVr12emGRMOCajI60ptuTEwomW8y
	ycRNLAd94PbqNFLx94IK5kH3RKc7U3IsOIg0Fezs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809c585cf1-eb804f91-5986-401a-87f3-2a02d32247f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bcd60f66b5b26edd9478f00e54cddafc67a84cecfd129bd64487f6d10d6f75b
Date: Sat, 7 May 2022 02:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651890478
