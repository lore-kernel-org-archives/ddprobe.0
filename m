Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A706F7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646064985;
	h=To:Subject:From:Message-Id:Date;
	bh=6hFT5gN3uVw5aklSyPorfkM8x7fOKZ9wC51s2geQQVg=;
	b=UAJS6RECIUZVL4eR3MAF5enrdRaZiVgB7GPHz29xdRpKgpZsI+KDGHmTMNRPD96F
	8HKEgui/5WSzlWsGeEh4VcVkLlxnIOsJawoLD8tz4MMUMFsQWRSbArDbiY5sSQrAD+T
	nhg/M1AJOaxUFfy7dg3wTJCZu5/yNuuZrL8x9Hv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646064985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6hFT5gN3uVw5aklSyPorfkM8x7fOKZ9wC51s2geQQVg=;
	b=YckhzygrkZJ5PbnsP7BVJv249iDfwzoEHG5pSqY6WQVBbCr7RqvrHfw/A0vT2Akh
	WafxKyMBxwPob+RBlaz7/1XcEC3+75EE00JaFtpiwjGddQqFopl4S0xGHxJsnmbkjXg
	bqdNxONeVY/4hvnt1DAsMdE5m9I1r9ZI+H2o1FlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f411e629d-36015ed4-f05c-4e21-a5aa-1a08878b49cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e989f6149dcf671261308052b56ed74c79f2d5296e8a3ae5bdde5e1dfc54c5dc
Date: Mon, 28 Feb 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646064984
