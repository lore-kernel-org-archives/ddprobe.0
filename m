Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FF71855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647254784;
	h=To:Subject:From:Message-Id:Date;
	bh=/3e1PxwBjEvIvgjr3BJeI49o2aGN9K1XzYiguZlRZjk=;
	b=TY/0Xuavmv2bAr7xphb19Xj6f4sT/A5okRTEnF0njmx9n/4532L6TdeefFV27wnG
	cdeYkkulJhT3ojJ6MQmqHeyh+G+N4DiC2IeqpnGtImfQk6MEPxgv+pwcey1tW+RKDU+
	K/CPiy+uGr4740Fmmw69qUJmAtO4VnL/WWeEIEcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647254784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/3e1PxwBjEvIvgjr3BJeI49o2aGN9K1XzYiguZlRZjk=;
	b=LGU4Kps5KURl4/YzxuNBOd9v/FDfCJR4zkzJwyKNDjwDv1yG/nmVrArLa7lorG5s
	4LXs8i1khAr0VZDVNZyOKWMNMRLSH00IfRt4Lv8iYLe0En4lQocQCv7VVHhTwgFoj2j
	LVQ4gKeh9bmvzDMl1Q74gFCGqX4sJw3ZspGf+DkQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88094add-f4895ed9-1577-49f8-8451-c520a191d07c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d21df23ec69539403052a9033703281f76ba15cf43b11415dd69588588f8d1d5
Date: Mon, 14 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647254784
