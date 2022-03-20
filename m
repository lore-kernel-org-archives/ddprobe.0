Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD747A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647770785;
	h=To:Subject:From:Message-Id:Date;
	bh=tyjBvyP4lQK9MDvffsq7zfYjMknpZiWya+K3GId906w=;
	b=Yzy06EZjAE61rfU8r9tKkqzn/MuPSh0oM+7kbY35tyfWGdYacX/wJbMRL0HLXG8a
	yXNii/2/FBpt881Bs5h+sg8uaVSFoAgHUwfa50lTCm8yNaIrpchPFelUUkKVN6ocKuk
	3A7sMSRlDu9GLe6mG6ksonuTAfM8Pdeiao0a+aJU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647770785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tyjBvyP4lQK9MDvffsq7zfYjMknpZiWya+K3GId906w=;
	b=hYRjhj6Ajqkun/pqjp0sAmGkihJ4jK7ApY/m1G2zJ9IDuIp37MSrFjM5Ct1dyxOJ
	Ab3T3X73HnFNozhEWUxn6viWlobns5tG6ywsTGNnOGTZV4w4QSky0hlUd0v5PsW3xJL
	21q7yJ7dYQb8IgUUKjevGRKMX9GFRhk3sJqDY0MI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6cad3e5-b5d2d54a-8d4a-42ec-a587-7b4504aeef78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81c376b631a5741a87533efbc1fc94c82303aae27c37b3e1c6f6311fe368aed5
Date: Sun, 20 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647770784
