Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC34A0B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659311452;
	h=To:Subject:From:Message-Id:Date;
	bh=jjnQOhIWG2Ir+a/ulw/damHbOW7HCB5+CSesRXPZcWY=;
	b=Tc0IYSHIdQwg2MzzH7MTNgg4VVrRdnulxaj/WXqaJd8F+YsiKGm42cQoKi4yaWag
	iaGfR4w+8+Cw8opO4ddtFNtUO2TVcU4FPTKoW3nX6PDG1bbDro33rM0XZCpEbv06H9v
	6gbx8uofPi0Y0V5HG9mpNx1na9LLYg4J9xBtydG4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659311452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jjnQOhIWG2Ir+a/ulw/damHbOW7HCB5+CSesRXPZcWY=;
	b=afmZEWLUJQZ/BR3MGQJiLZCg5e7J2BLysTy7NCwygM9ync6fQM77RuiO9OBxICrK
	EC5+34pXNE2V/95BXqKpnEGOAwkfOSHr6mHjZavy6yaq48M6REFJ291tpLmFWT3nuB8
	Bxz39OaZRZ8ICUuuoYt6BxD/hNQbeavLOUb8aYdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018256ab716f-5a080834-5629-44a5-a536-f4f803584145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 401b3c68dae84ceb2433976b258e12ff08e9906180e6954e3d60d97b6e7a8c1c
Date: Sun, 31 Jul 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659311452
