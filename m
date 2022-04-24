Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82DB17F5
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 08:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650788638;
	h=To:Subject:From:Message-Id:Date;
	bh=24/wc/3dGqgljVO0BQ/UUnHQJCfh+yzKRo6M8i2KcuM=;
	b=ZlM7NUYxhmMlhYgUVPfQ1Wt9k6B3cCXblggt8iIqUzmjJLSnqYc+LtZCaeVRrsv5
	1wUD9byRjRkkoIQI73qr19v9o7zCaCrzri8zEAMQgvErNyPxxN02mux1/LAsi/LmstO
	1ohe6uICB5UOQ3R1KCisjS7QXPENKRmGxYVMN6VE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650788638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=24/wc/3dGqgljVO0BQ/UUnHQJCfh+yzKRo6M8i2KcuM=;
	b=Fufn+B05FETEHMrCQ+Ki3aU8iga4rNihExOm2Q4Fdp+aQp8ujVrQFRfRF9i3t2Fg
	mSaB2PRS8wqDAYS7PFTiXm+hPTaNt8BSc4kHF1TgHRy/ZMWjxZBsdx92tlBiWJjVHqm
	jB+H4vBDfe2dNlTY5HwHZdg0yifiUXErZOTYXSnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805aab9e45-9a180286-8959-45d2-9555-aa44331bec81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f86f553524ee9225feb606846060fd8f573b2eddb6b6f8848ef00ce0cc7c3b71
Date: Sun, 24 Apr 2022 08:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650788638
