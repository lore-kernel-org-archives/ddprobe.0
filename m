Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8928662A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647134485;
	h=To:Subject:From:Message-Id:Date;
	bh=BIWb+P62NUlYe5XBYwfprGxrVRCh6Envpz93+PH1pmk=;
	b=kKyBWad0G4V28cubPWPLGd7BdVRlHyqTPBnUQLKi1HsQ9DhDFrceR8w0gya8aABp
	7BwFn2C/15R98GOy9d2rJRW1w+d47d2YHWXsQxt+hBBa9VVJnw9O6dppVvEn5KXYBUI
	/1Jo8KW/TzKy7c+5F5QW/eeRZsOBoq/XI4hwGkAc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647134485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BIWb+P62NUlYe5XBYwfprGxrVRCh6Envpz93+PH1pmk=;
	b=VY6YTbmq6MsUB9LEmgTLGdmjNKePr6WuDxATnJgeoAfSR19F0FtHsYtCQcTtT7SS
	gG+hMx1BmH0dY4kXuubIAPduMJxaeZ7uJu5Id7alolJHur1bYRUSvCDPvxDJGxleg+N
	T+JecwjgyciAcfglnNNwpcI5O1bVr2ucSDZ5NeFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80dda93f-14be6eff-8058-4059-94f3-e3a911467c25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a38b2f44c2b75d3820385f8b280a7bfa1dcd460535258fc24659e47826b53492
Date: Sun, 13 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647134484
