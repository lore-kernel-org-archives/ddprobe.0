Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAB2181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645323385;
	h=To:Subject:From:Message-Id:Date;
	bh=ogHqdEdfii35yqWqrllWH+o4kwefqgvfMRsj7NtRaO0=;
	b=FJMpBuyJefb4p6hk6mvHcAbKEOUJFPHg0rBY/axYiy0WyFigQqeiPfYXx6qOYlvK
	N1aCFjeNpjpmHmjz3Ob+jeARCtohQi6OKzWhLS494/OujTlD26zCzFD4RHBOqz8YGQY
	PVpz/q1jteTxd4m/Rz7c/tfH6XhjLCeC3LIO7TyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645323385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ogHqdEdfii35yqWqrllWH+o4kwefqgvfMRsj7NtRaO0=;
	b=D/s/Z0ZEFX+88XXD1gLoNrbF2iDLqZNAkIv1viu2wm0Y8FSJUYB+7BBol0gl+mLt
	jYdjvoimHZ/he1LHq4ph7MBGl237o+7As1vcYwZl1pJ8p1NUiSVBFhXpfADqe9gdPDq
	SUCtaaHHiPLMOGZ0tDEkRXA9NKI1vv/RjIc10B80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14ea77e9-7ef8a94c-53ca-4eb7-86cb-81a54ae9c10d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fc25b622ebe042c555b14d8b588776bb277b6045afcc9744f5922b51cc3bc4a
Date: Sun, 20 Feb 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645323384
