Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90713FDF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656098812;
	h=To:Subject:From:Message-Id:Date;
	bh=lgNcRMRZFtcu1Nv+PLO7ZAjZtkZlvPIeVdZ4vydaEzA=;
	b=iuu7tXI7eNVgQcmK6BkOYyBr3EVz+JF6BacM1g/pkd9RFwxQGHLsRAwU84sDeaPC
	dlp4FO+wQX8/rkRRAf1Wwad6s62lJkXZF0rMGrere3y4iWtCE9sOf4XwP0/f5+oATgN
	ufPt5zqXXTyv1ERGQDkSTSpDzmc4dd/lWsRE1jB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656098812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lgNcRMRZFtcu1Nv+PLO7ZAjZtkZlvPIeVdZ4vydaEzA=;
	b=CklnyxdTehylX/bnxZtp4Qdv8gEUDw6h2/Zjf0XzmPkrq3tIk/5i/79ZPf24j4Nh
	nSW1g66wouRne/lB1olp6X6DQYL4PI/nsO+P1BrPYPCNGvOsz3qJTQwkA/zpd0yyjfX
	9+vXLEiNKt0RMF6H3UYk84PY2xye1hbId0tnf9tg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181972e71ae-40537347-12da-4b78-ba94-c0ca5e211304-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59cf4c5c2410b33d86210e4f08677d6383374d90a8181602c27e6ac0d1c3a103
Date: Fri, 24 Jun 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656098812
