Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129F77A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657379212;
	h=To:Subject:From:Message-Id:Date;
	bh=JcITP7OCNoQaxzZHJQ0o+KzgB/hEMBVCaZ/zhWncFdM=;
	b=jPlZiO17Crl7QeX/2+ETYWMPMtqyoQK4u/eGscxRw5NIxm6LsN4bQ2ct6N+rigJ0
	KDQDIp9VWNfQo9QXxnkLr7pddcBVBaPYRpEF7zWlGx/I3DEINVOYlFo4Z/cJF/rwzyO
	Keq/tpC0Z0QZOYW6FD5tfWzOGpX62F+yjSOs4wgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657379212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JcITP7OCNoQaxzZHJQ0o+KzgB/hEMBVCaZ/zhWncFdM=;
	b=ZsJXFqAY706hjhzTb2OxhWSJD1xCf4Kwf9lqOtAqamR/r2T6s5Xzj7OelEzWeOI6
	43PFB850arvaTiIa5FRZdsCDszyUxRn15xem51zzJaaJezSd4t08JWasDbtyV+DzJJ5
	MrkVflFrNyH7HaPhX3WbnpReTo16ZITu/8Yd6QMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e37fcc14-4144924e-7d13-406a-9a87-ac9ccf8a1232-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 085e036f9bcfd881949ace8e1850dcb84b910425eaf617cd71704a05be0dce58
Date: Sat, 9 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657379212
