Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8197B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660796452;
	h=To:Subject:From:Message-Id:Date;
	bh=idgLi4EInUQrQHtJbaaSftVp2SZ/WiaPHnBtpK0fkSE=;
	b=UOSPS+4NAwzo4C8xml7lu+GIAxhY1JoDoFq8TPy8pORug/fIitrNBiz2xzaGN+z6
	gifxNixfyjZI3FfsMl3StttMG2s+EoyjyrLnpp7LFTQCJ+cd0MdwcRKSDyTTioc5P9D
	U3CuVdTTUtOi/W+HUuWOaNtluF9fyAxIdj1vZhKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660796452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=idgLi4EInUQrQHtJbaaSftVp2SZ/WiaPHnBtpK0fkSE=;
	b=SyEnTcpAWEWPw71B4sO8g7pYUqxepCQtMmH7OgXNVgzM/MTNkTZTuqvEBQ6uIcXF
	HGFaEpW6ELlhmp0AZigLluxPioX1EXJJ3cigUVZWRhSzIp/XqL4FrhibkUgdt3OsGEC
	azvO1AyZY0qcgIW3xU5rQL6SRrEso/9piVY7Oup0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af2ebf0d-351e423b-699f-498f-beaa-e2d1ae4b75c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b45a864827e5162b2c97ad706f913b9eef10b7a19b69b8e1782bb49dc8fac10d
Date: Thu, 18 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660796452
