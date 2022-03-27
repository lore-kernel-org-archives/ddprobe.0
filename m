Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88B615A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 02:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648348798;
	h=To:Subject:From:Message-Id:Date;
	bh=LzAufv9bJw77kMKumKoSq3jL5qJM+dDV3A9d+cuNUB0=;
	b=N92tjCiEynSIiUr+WCxozxjYhKMw2q+NYUhPN+pvyhkUz/UdCPky12Av9kKMhHEd
	tdjwcNSu/4qUdQv4TSkEhYE9gPUZYuDJGA52/Ld5wgjx8yW1mrj/efpvdUyWA4AlP0z
	ZwNZnMV9W2TBYq6LeJWJXoeX6r6UJmDlpv/ZXO2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648348798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LzAufv9bJw77kMKumKoSq3jL5qJM+dDV3A9d+cuNUB0=;
	b=GqAtRz9c8Bfg1heM07HmQYF0hLAhTpGOgfdl5mW3NzbdeiL7LxVPt0NjAwfuTvuj
	6wvAGUNqn87BkbhvX+PUGeCXhZ1c/BaAL4rve9zpQRCD5U53vJqM/DDCsavOahlauLw
	Qnd4e+mTNEYJbfqiqr5Ikk4TwJkRBgTUHVWVzPHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc93e9d6b-d9416d79-a550-44f8-ae7b-b8ca5d307bbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7f7d2c073fae5f2b3733b9e02060f0ecf64594bab576a6cdf6aef6805515e2c
Date: Sun, 27 Mar 2022 02:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648348798
