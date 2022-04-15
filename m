Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395087A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 04:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649998018;
	h=To:Subject:From:Message-Id:Date;
	bh=TvpS0wJ0nImQ/I0OL0zk58YxddVsK6jzZyuMlXQmmsM=;
	b=eLY3tp7JWyV61kIpOe5gP2VhnsqEav6I4PCfSyQe3hNLQ1wYbiUf/EX3qIuNTSjh
	KEAVpN5lUjlZeN4KmY7qktSrpq0fMYiRTsp4i9TQFaNHLhSfDzv9uuKmCDnpfJywJm4
	8ipNAeiNpf8mEWG16QW2sOrEYf69jTGhxEgxkm30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649998018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TvpS0wJ0nImQ/I0OL0zk58YxddVsK6jzZyuMlXQmmsM=;
	b=ip1OCjrovXG+fjjB9NBFqTvs250KmhezEEdotJVbEQdbesKm9WNNvzyYMw8QSD1Q
	LNXW6RvwrBPBQVi/Fsr1FeC5vW+sEctqWvGqGvE5YcmXVrOgDcGhNZVULcfLPdJlrtN
	GRPOA4Hf7eSkZLm9QIokq8RqXzQQLL1KZNrvIWKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b8bb6ea-a89d1360-2b97-49d7-b39e-770f204bdaeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7280c7743ddbb94ebf82f828e152d559ea245259d43d2e4eb5fcdbf912bd2222
Date: Fri, 15 Apr 2022 04:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649998018
