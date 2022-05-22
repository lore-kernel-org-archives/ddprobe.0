Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A84320E0
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653185639;
	h=To:Subject:From:Message-Id:Date;
	bh=7mQksrWi8BhN4HcacwIOPSQpDY84zHui4is1/NlmESs=;
	b=WTTdsQPSQ1ihMOGUGJ06SEN/+f8n/1H2nDvx1yvofimyIuV5ojUto+zf9MjuM8dn
	QY+lTPjXZ0dVF9niCNHvm6IKexSX+mQW1iccT2JQxu9MJM2hJWWazcjhpDxfC741yXj
	48LWEEfqjL+cgDAfCa1FGyAhWiqqOFdHScvqbYKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653185639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7mQksrWi8BhN4HcacwIOPSQpDY84zHui4is1/NlmESs=;
	b=in6gI3Uh9W/QRKncANBue5Zt3p2HZS4/eURJmE3RfZAqg/zvDIKs1GuX7ktYtUBU
	J0+a4Hwess4TW3MQvX9kFxm81amhyR143WzxBvXeJy1nUGaWJ0+ST27WAdIjUJqSNB/
	vCB0reCX/4KbxZ1p3JeD10bZvNDSilJulVy86K1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e98af3c4-2c1becc5-e66d-4fa0-b565-f1966a88261a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9865bd95535925ec2d31b72774c698b82e6397a79f32b82676e439f53d715efb
Date: Sun, 22 May 2022 02:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653185639
