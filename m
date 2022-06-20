Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00BCE7E5
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 13:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655731139;
	h=To:Subject:From:Message-Id:Date;
	bh=SKSgw6kF98Ijea6z0rOI/CAsaUnbYxASDyPw8jtYHtk=;
	b=WHShMK0icMooBtK1+3gchLFMq5bFDst1YPIHaERpQcYc3byzgxFJQuMg5hAdAeUY
	JYPDnZGJqRMX8HTy73x5C7sXsQQPiOq5hHXx/AV5bhgMQljpNyp9gZQEd3VwsvoYIiP
	dreBXyDS889bOpMEdhueESz6+QUThvEMk1s90FQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655731139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SKSgw6kF98Ijea6z0rOI/CAsaUnbYxASDyPw8jtYHtk=;
	b=CqOSAzCbEaf/2Jr9PICiYAeoerQLmz0ZfgS01FTogyKsNGe1ilh5RdiUNQ/8HVQm
	txi9jKHYCKWaXvVWJPLWtYp6EehDkh7j62VPS5eYhatB5mqCbBqa9MN8it8SJlDfgh+
	PNCPS/BpueU0TbY4OsWQ8Pum+dJ0zbfVbMzSvadM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181814432a5-b8ba41be-ff5a-4869-bc24-71995389cc73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 541308105ed7fae6d96450135751a336b3e5d7ac8cd1d66c3b4534e40732530a
Date: Mon, 20 Jun 2022 13:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655731139
