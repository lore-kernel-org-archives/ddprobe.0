Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0250B210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 09:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652433179;
	h=To:Subject:From:Message-Id:Date;
	bh=DzAUKKT8lmhTuMJH0SbaU6wluL+XZYHYXTfwzjIH9d0=;
	b=fryO/oLn1MrbbmWdeThDU2ewojlLAgo5Sj9mxRmyEfhSGkabivHA0eEd8xkYzdvQ
	+jJvKnT6/g3eMyM9YXT/yxE7GBPvTFYOzFKy+eHO6GtlRJ3HGRgizzQOgNOxw4hsNZI
	DGd9I/CleeVprpM1SbP4S3V8fR6lDu1pfEQo/uGs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652433179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DzAUKKT8lmhTuMJH0SbaU6wluL+XZYHYXTfwzjIH9d0=;
	b=kI6teHRxQVXrj12vrP5coNjvBfq556sbRtSw/gC/eaGvF21cjyoXAAzCZxvbGG7+
	8fadTlnfBCriDkUK/o53GEW6ugai5YcuFFUR7N3/IwlWS+cznY3zZGoNNWE6CbRalPm
	Cmj5e39n7KHoJ2af1Tn8B8mW4TYAEUFqELd8ABZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bcb152ab-6f9ac47d-6a00-41ad-9430-0aa08e1f3a87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8efee06a0526d9ad3353a5bfc7fbbfa16f7e92b6de8f7d5648b745fba7a9372
Date: Fri, 13 May 2022 09:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652433179
