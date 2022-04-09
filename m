Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B797EF
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649489458;
	h=To:Subject:From:Message-Id:Date;
	bh=Qi3Hz0padLlp09qCIf89wJRwI0shZ5NC1IP1t+bcG6g=;
	b=g8VVIOYH4E0P3QAImnsvT9aT0AYEvnk14ucjMdjvILGE3iuXw8YmuyhW1osb6VyL
	sdGQbF45IpoxG/PUENcaLvxqNvlknvT7geKmcnaQS5y/leTlq3SBwhXPBqVtBfbgObs
	uCJb39MId7DB9mAQhTUdpeq0bgMfj7CN65mayyHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649489458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qi3Hz0padLlp09qCIf89wJRwI0shZ5NC1IP1t+bcG6g=;
	b=fLmkASHqUrQ4Up1wiQir2qNWPpA9EZX4Q01MOhC/Zd0VsDHB2oWGwhA8A7A8bEJx
	+RiKvXa+ws4AQ0/nge2WQQeD/zxIWnmxQiBc5RxuBTXulBfP6hOJIYE2K9ZuAtlREit
	mWjpFT4a1Zm0wmSPwQfGBDNZwdvwKjBt50rVutSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d3bb464-45f4233e-943b-4f43-84fc-88e6ee197089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c34e54b134e5ffbf88f4d4a45533484fa0fa9ece185d274882b08413bda8f57
Date: Sat, 9 Apr 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649489458
