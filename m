Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87B45C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 22:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658530612;
	h=To:Subject:From:Message-Id:Date;
	bh=okoQv5Jezt5yw/YzeP2tp13iqedc6T8XXbFfIiDBLOg=;
	b=KPmIe25sApaf6tmgydtmkIzvhmhxPqicbP6goRwDf64loyjH91K/ua+yFIVur8ZK
	GrmvA13IwAN4ucYKaCZV/x0TJfYMxIrQE0dTiWfSH3E/92A+JwCRnjc8OJNIpT6EvJv
	4mX0c7yKPUN23yc3nn77UabSk/hSHvLN/WZjJ9QM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658530612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okoQv5Jezt5yw/YzeP2tp13iqedc6T8XXbFfIiDBLOg=;
	b=TsSvP7dTzUKAfaGra65mKqEFxRs4u283J2F8XdiYIx3fvgdVfF4A9k2bk6oQh8mb
	xr81GGnVu7zIfA/7gCrPbvlTmIsqqRB92bRbvaXvFQqst9EWxlcCEU1sMC0fxOZxhGG
	H5YxJ1gjmgNhq0HnZ5JueglB+qn6TuosdYj/RxKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822820c43b-e8494640-e912-419a-8c95-a03b888ce3e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17afa5bcdcbd41d02f5ad15e267269d1d1ce4f3cff0cb7e8cf5547aa1fe50de9
Date: Fri, 22 Jul 2022 22:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658530612
