Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C4833D8E
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 21:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653428759;
	h=To:Subject:From:Message-Id:Date;
	bh=NJwYrliahz5l4t6ULDFDPz0FRawcuEIyi8ul52bWRq8=;
	b=SQMHOS44/ReYPOgY7HAcfes6xsD7jJVlrDdz54x+0gd7ihubsEp4jubz62e1DPpz
	3Jo3+sTnQm8oDHDJvFEj1YTvqbFr0+40Ri/FYfpQkptapo73cKrSpv9t+xGR8DWkpiY
	++ROxUpAy3enu7vdw+cEYl4T34vDPgKETaK27TKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653428759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJwYrliahz5l4t6ULDFDPz0FRawcuEIyi8ul52bWRq8=;
	b=XdhjJBgCXjqjh3riEGchm2HkqxStQsKheKj6Oz3CB3vNg21hm6ZPovDzxWPMDHzI
	d2CZ89FSjXBlFGsych19ii5O2+Dd1WUdz/0mB28UVR7DkWx1HAuQek8Y/Y33ze+Yav/
	E+VkNJMvPPn4O4hQk0HdmZGdNr9X+IBMLiK0JmYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f808aae5-57687407-966f-42d9-8646-cfc66978645f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 459439580d7ef2b6c0e50e86435714a8572006ae5c23a321368b049ab14d8c81
Date: Tue, 24 May 2022 21:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653428759
