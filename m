Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0B96AB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656532612;
	h=To:Subject:From:Message-Id:Date;
	bh=54PhmniKdVT42eW/3kW3X+7TBVZe0QdsEnv1K5B6uTI=;
	b=RC3xxd8EZgdaNS3h+/2QCAnKlhbbu7Ar/Vxu1mtrzYgmAc00Yy+q3sSF4QypG5HQ
	Zpe3Eg1rjYOSkD6d55L/LhJ/L8sBhiBHEB8KOqfO5aFqA2Ht8OIeBHbzp22MQkiIx4h
	FyiClWGS3yOjxcdus0qhLuGk5DHSCwxi2T2nB+zQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656532612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=54PhmniKdVT42eW/3kW3X+7TBVZe0QdsEnv1K5B6uTI=;
	b=b+I0iOJCPAXkprAoOlPpv+V0UeOMvDD6JEIPKohs5VcgIw3l0puSy6v4XVS27eyn
	2giQTk9StzXoX5BUSNznR63uDJF/rO94lOqH7WHLR5ninoxGmBYKcoRA/iybGWCxJLa
	Yj1t8yk1SkoCq5hkqRFmRQqmzr+L/WW9yVMzgQiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b109b4b5-c8499ff6-4693-4084-b3c4-2d59eb96cb28-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 788df27c922608ffd9bacf2a4291108983977ff25d7029f9d3ef4710a62b3172
Date: Wed, 29 Jun 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656532612
