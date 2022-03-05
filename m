Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C137E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646450785;
	h=To:Subject:From:Message-Id:Date;
	bh=MZ0SfG4klTmF2ltfMS51v2ebydibcfrGEva/J5N+kA0=;
	b=LuW/i2CK88QHuUBF+N+EO0kKuV1yB6WNEEhShDtWy1d+Mru+ftbUhlDRYVwYsUt5
	9Z+yTFoVt0iXktkjezruUp7cv+Q6+PwHkCywY5e2FVQVx7kMEBMyaAxHItpl/T/+Swz
	rpYudrFer3q/5tZlOD1k4Q9wkYe+oQYi79CTtsJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646450785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MZ0SfG4klTmF2ltfMS51v2ebydibcfrGEva/J5N+kA0=;
	b=TtHm6+WITVeifI9zKY8tJuC5tSvbU7EuNKqfEup8uRFRbhYUucQr9HoY4SbcDtW9
	yzaEHMAF2oXPD32GiL5wcuI2cD5Gl7cImFoehUOl1NJK9VyqoLmiX7KH1TjeKshl49L
	jHiDHlF5YVXDXt9nQpbY3WWF/zooq+1Y3C+hC7Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f581d3ad5-fc0e1fd6-5607-491f-a31d-5f6aae4e88bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e7dd45f3f2d779e66d8a5c0b45ca5052fb67c8cdd9d7e4732461628eb167449
Date: Sat, 5 Mar 2022 03:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646450784
