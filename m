Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311DB1867
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 17:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650474718;
	h=To:Subject:From:Message-Id:Date;
	bh=W8dlO62pp9HgBcvXynRnOOipDGQzhOmwj4Lk3NokrTk=;
	b=LyUmxmnZWHgODe4yYTJzIj1nxLz9zOIaLyxtG8/xFdkmqZyaWjk/5XCLKDJKW5Bb
	6YMJovfBWBjlryTTCggbcDA4mgw+CnsuGrVHCc+Whqj5l2gcxtU6C0oqXsAl199XPmF
	kf3EgwH+YPeCMo+D8NW2ZqUvNMOug/9h4I/KNTNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650474718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W8dlO62pp9HgBcvXynRnOOipDGQzhOmwj4Lk3NokrTk=;
	b=R8Im3R1XOVyPvXI2vpcdcusTYMlNMiG5Zcvuiv9sQuvVRStBzHt1VM2tH7cz8UNK
	rSoOa/mMGTumZ6giwksAK5fPeiql6kf2W4emNhOs4V6Bx+gp2Uc4VFBi+8tpT9JyDde
	jEaK/qDW/YoegnAa+a/FNDLaj+qlKFqFzkgF57ZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047f59452-28fbe9d3-89c4-4129-a424-b599f9006965-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b57795964f97b7176d95afb3329d4b25453a46ddad6068f980e936fd02a8562b
Date: Wed, 20 Apr 2022 17:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650474718
