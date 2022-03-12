Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CC3614F
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647123684;
	h=To:Subject:From:Message-Id:Date;
	bh=D+zZID0FXswNJq5lfRFND0pKO0Dk/TYGzhZH6GHsGf0=;
	b=f2W4COILYSHJAg5aor494uxNscjtpLK0XPr2jlSUbK7Us6Uwz5cxAYJxfGxHNkZY
	a7TCjHRALnEXdHn6gdcw6kClAp1VZZNh2vN2CyJXHN/K6ANoOU+ANZsR1zxHltAt6Wq
	Kr4McALn4D3sa0At5Ls4BaVC7i+F0joCPAgwm4kE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647123684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D+zZID0FXswNJq5lfRFND0pKO0Dk/TYGzhZH6GHsGf0=;
	b=B1g0ns1z9uC2JiBzsEnEMzeS/I+VWEkQMBoVekECYnDSxV2n9XS3MJjuKgX0HawB
	MM6qDB2hWTjqkYQ/lVkyV6AQQmkagbHghT65PpK2OsamMnkHoRmLirQfurfXT2EvSmE
	vxz2AD0lsXS34UVoaqgYW+Wl1YPHhvOyovRp6pcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8038dd98-a4c4935b-58cb-4424-bb0d-0387e090092b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b09b26f4f57f2001120126691dc6f7dbbad71a87d4dd1d69e5ae1323f8945c96
Date: Sat, 12 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647123684
