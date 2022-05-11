Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8042F25
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652288879;
	h=To:Subject:From:Message-Id:Date;
	bh=nRmXZzjmTlcP/vcX+CvGrwgTB4F5JU3UF4kYEfcbOAs=;
	b=UeFslddZlqI9+5YY7bnba/W24BQOggwf0DNtbnbXKqIzecKJz/Juaf4fuQyRNw07
	uEz+c35BMltXDR7/jyQJ+iXmkpQLU9ylGsBcDW2nXdVri3vbuW3gOXA+IV6twRNlqOm
	AiZNIv6reOxuTqueINJ2or1yz7fkNT3p0T5lxRBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652288879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nRmXZzjmTlcP/vcX+CvGrwgTB4F5JU3UF4kYEfcbOAs=;
	b=Ch567iOF3on8pV+5sgxVzt1x95fOHkANHj0G/3DAiwNeBtmYVf7nuYIDoN71TllU
	SndqqsB2cdqksrlSCGxMQ5/xtgBVV2BccJ7BchVXmA6nfykt7I4OE1e+DBIwEv8vGYN
	QIkBc6L1nA+LaKYI2ZcFagGHmsKT1GNsuBXJjdww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4177ae8-9e374219-859b-40c5-82c4-fa125746a2d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d44e080a31e327762b279b2ba6dfa8cffb5608d67b510935c2f986a7674f9421
Date: Wed, 11 May 2022 17:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652288879
