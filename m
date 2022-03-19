Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C50E20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647712284;
	h=To:Subject:From:Message-Id:Date;
	bh=iclALoUGnoVEaQtEEt8C++Yk+Ewnm8Ky4AS5GJy8eZQ=;
	b=U5UzIUXUNJsFR76qBmLCGloW/NpA0mYabV2tV2FYuGy0ipQuICtPD21SbhpwfepX
	sikeY/mYjdT+yE+JCpwRp3jZE0I7zlasPmvYKVhN6IP0eb/VdKCU6SnIh3Dm0bPpwGC
	Xu6aHSvTcOrebTEVXIdp9NxcmarwT0kZn5snlntU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647712284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iclALoUGnoVEaQtEEt8C++Yk+Ewnm8Ky4AS5GJy8eZQ=;
	b=kcUuIeTp4NANtOYQWOf5zljj1a86h9B0Bzxl/iUNWZTHyHd9fGKT650zJx92ufMb
	uK20V3quw56fSyQa+00Do08A3NKceR9/wQzdI33CJgO/1HA9LK1uQad2r+ChRvgJTzb
	ZLzZCM0pPFgLkz+Ul+3+G730fc1S5IbjzmxJue/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa34e302e-9a51ade1-7631-4494-b00b-d88682ee4744-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd58dcc1c85254972a2631a250c68ab7e56c6ee5102fb0e93b69b032c4afc80
Date: Sat, 19 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647712284
