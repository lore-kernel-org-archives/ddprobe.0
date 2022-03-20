Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90D2B20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647810384;
	h=To:Subject:From:Message-Id:Date;
	bh=dgu0MpuV1hpULozeRnsGDuYtQTrVpVM1iah+m/jzJJc=;
	b=HK7YukzbR9KouWpWeP8TW6tDXSdieDdhkW/eqnGGkvUBuBxqEX8wl3/PR6wR23y/
	oTkZAdKtpQ+pSrVhBydMwGuLPvsQWxwNVqWw+0PVoblKgO0GHdB+M5XR28aO0tVEljP
	xilASBXLnIOe3iiWzoYPsYwiEuVEoVoEucLkXq8k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647810384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dgu0MpuV1hpULozeRnsGDuYtQTrVpVM1iah+m/jzJJc=;
	b=aKDKv7g6TsAYEKmdEX9ZQJNFqBbMjK/KxjHFiDAconKcfTaC9Acf3iBEL/uUNwGP
	Eu5c9EGOMFH7k1p55kEjr5JPanSpdXFm8xGh2jAgVC/4tmba2ygqlcFXwm895iIOc1m
	K530XGqxweSI7NtaRCjTtO4nBcXuPQhrNssQYeJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa927136a-921a1673-0604-476a-9963-5a3a74746bc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6271fbd8b29c1d5011c4814af51d2ef55d455b11a292a01d1a8653f2da96026e
Date: Sun, 20 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647810384
