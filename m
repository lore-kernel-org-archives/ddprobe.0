Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C8E4289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647869185;
	h=To:Subject:From:Message-Id:Date;
	bh=C4fjSPGMWjYuYH/E+Q3GbwvarnoAxmjSXsbjBmRlukU=;
	b=M9jVkGo/WShFfY0LVix9YE4xSVEtv/hJ0qzi91p6Jr4l45yL6D9QmAtOnrme8etT
	T73iV2J7mX0i+oE3PhXGdR8SgCVC6PST7GOQVFmNf3cG6eZ9YE4PiZF9rAoea45hQTV
	q0iF4BwKU1LAkHhczolJucztbXsLyBubff28Pzi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647869185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C4fjSPGMWjYuYH/E+Q3GbwvarnoAxmjSXsbjBmRlukU=;
	b=krC4Vh0x4wTPaGuqMBCocBDF6+AYqJYJ8LXt33C8TbgJl/Lfe9ketA15x5f8AhC5
	LP9GmAAi5zGf2t48Wtmtv9Tg4HPrA/C4/hTHC5T77VqxEVrOvV4Ji2YRk/WMoazY4jI
	wlgs39lroEIUxrJZOeca1U7LJHn7jzTm0StuETAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faca84ac8-671fa805-7516-4f41-ab50-82174033a5dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca7c3ec13d2fa25b05f3c4efa36cca40368cc6041ce24a74b37b85298d6406e2
Date: Mon, 21 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647869184
