Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D51228E4
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 16:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653754919;
	h=To:Subject:From:Message-Id:Date;
	bh=UolEYz6UpeJ7qnNWCYArd6CTr/ZyIyfUOW5CrZladnk=;
	b=g5eWx9pi4ObxpVemuMFWA3X0tzUbB18Ktt07cESa/aGn1KqHPguOjtmNVj+D7BlO
	K58y68cM1XZeAFBFGctJYYrlc29fSSnwm79JZHF76i3Fa2xer/jeaOcShc5cN+eB0wD
	VEz/FZWcZ2dYoBx+et4AOlzC1iw1e/mWk0t7q8Io=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653754919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UolEYz6UpeJ7qnNWCYArd6CTr/ZyIyfUOW5CrZladnk=;
	b=TztmKwh4mRcaG5qveFIF6jCU8dUHfU1Af78zeC2lBHvwYXGPdTYtapQDzaS037s1
	DP7bUBs+1UxT+QzOUtPJqzWdkm5k1AhbEcD5mB2kmSMB7Bg8BhJngDEizkoCpjdEtn/
	i0DqQBg/UefWOsjiR6iQuv5z4d2BMLX5mMj7jR04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810b7979b2-da5524fe-51f5-4845-b348-116828ecab93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 866ad22595442da6e076b9d74e8a7e7f9c1386b952e493b2930f12ff19e3b260
Date: Sat, 28 May 2022 16:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653754919
