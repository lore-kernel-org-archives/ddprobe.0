Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0581D7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 13:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655646059;
	h=To:Subject:From:Message-Id:Date;
	bh=+Wdzv+Ip4NUKlUW34x5HD98F7uN9/TOA9WElQR6u8SA=;
	b=KoxRwmRIhHi54jzBA+BRaVb860HkcaOfLLeVY48xDtXobiSpdKr4bHKVgpb0Osay
	6l7V6fB/1p+8iKpas6zmVI5jKMv8YWQYLVr2VwvQ741t0QzAxCiK0xKuSFzYY9d0V87
	jRXievufvBx7Vp7fY5HFXboH5deRWnjdhgOLON9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655646059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Wdzv+Ip4NUKlUW34x5HD98F7uN9/TOA9WElQR6u8SA=;
	b=NmZDZmMU0qkDUJfDmHhCYlj5CuXsnJtM6vhI+tFTU9vBKBgLeZ65n2n57WKPFEiJ
	kZG9ku8Qkilo6VHFUlTK9zA6nC2mJarPCb+4BA6JsmrKG17WrbfUzQx5e0FHGVNmI+S
	zGNRkh7nsxO/ri+hBw7iTuzPLOXLsovw5CuR/WzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817c31fad7-993f2775-bd90-414c-bf3b-8f3dd9a817d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b82882f81e2c638c6f145ae2876709f45a2730ad38c64fa196e52553093dfe9
Date: Sun, 19 Jun 2022 13:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655646059
