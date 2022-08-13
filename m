Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7523F803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660393252;
	h=To:Subject:From:Message-Id:Date;
	bh=3YOuQp47A0KNK/0bnZ4I5yP66kw9B17k46O1qhx/uSY=;
	b=Q894OdPlCt0x5T/V9SQ8yDr5CIDRAj16rVc9cYI/IUABiAUTnpDrrp/b5X8mMqTj
	lvrybmh64iL1FfC2oh6goIKguWJZTjy7DKE1aPX5lsbf4+e5d5Qd6ut04Ih/Fahf5Ny
	UTKis22o8/+/QamY319aXGD83wboL5onwQWTh2jI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660393252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3YOuQp47A0KNK/0bnZ4I5yP66kw9B17k46O1qhx/uSY=;
	b=GEfZPR9arSgzp5CYUgXK7ctJFbuXWfUIjIP/aBF2iKn2WutHUoGOJlL75ZhjOPgr
	awMAGpBD9Yzph4PfPi2UJ7WKGitdTJMp4YjLicCOZ9NvH2AScGegsIwBKWk7Rr8LPPM
	WA2h5Roc79XJOItorSB1YaZchzu3HOoukY24OL1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182972666f1-2b7ceea2-5d7a-468b-8584-5d015be1b41e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02d7c0340cf8895032805235f3f22a425f421343d3572cbd7ab53c598d4a6e04
Date: Sat, 13 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660393252
