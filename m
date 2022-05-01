Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E3615A1
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 07:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651388518;
	h=To:Subject:From:Message-Id:Date;
	bh=L2+k7IPIBAF2Mo9MJ4WDpucogwmhywKTyQzt2mVWN/s=;
	b=KJljrFXwWWp/9rMn16e+cwthX/QAL0/o2Bl3fYopfs3i/0rZutEl3HZT6v2idPFy
	zxsg/VA6GNh99Y/v7sm+9oKbtIVvFGZSTUa5tXcaJ0BBwq4jyc0RAJi1XR1nUKKs0z4
	GTQSQ4m/HT3x8hXeSK45+GaMulCb6yLZuv42zhBA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651388518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L2+k7IPIBAF2Mo9MJ4WDpucogwmhywKTyQzt2mVWN/s=;
	b=SRBwsJ1v6LGofYv99W+STHvxVhgzgP1ZDMTM/97NDahePKLqB3S0ZaoxJfgfXG7U
	qndODc7aUUgEeGBemA651rWu8JWj2iiDFSD5LFNiNNRZXQstwQLKgMBOdVd/V17SSYf
	W7oiB1xW0BjIb0p4xxq9pmvUb/lb1RQ/5SwEtIHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807e6d0f58-a147b5e9-a7ea-4206-8779-8a6d8f6bbae9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: feb4af6aef7d77ccfb7d3107f65377b95bd8df596ae79b9cb48c0138dfbe4fe4
Date: Sun, 1 May 2022 07:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651388518
