Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9EF1FD1
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 16:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649781118;
	h=To:Subject:From:Message-Id:Date;
	bh=oaJeL26LXTOGDFxUvB0eI28NRTuONnIntvxPtsE/upo=;
	b=hQIZo1toTBcgEBBCMxjN14IlsFslpsZPwYeenWfqrXkyG3tmXzZtTBd7oOjqvvxX
	A6q6CI1CCyvFotNCxRY1+1uoC+SvHkkQXEoP1vslc55Kue0c/x6A5BiDL4686IH+psc
	OdwJCTWyz30zhOAPqXFyOGayRT7MYzQVOiJoNmT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649781118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oaJeL26LXTOGDFxUvB0eI28NRTuONnIntvxPtsE/upo=;
	b=ZR+dcKG42hQltQcWVyKf3VFK/5scgUhevejoHOLRWReBBY21N3QiLnrVh2EtdLtU
	AVPG9dAYoZUqKA8Ol3LNVW0IvLyrrl0vHLQrWcX2mpC+1VwMg+tBv/C2v+RLFUYb+1D
	cZRNWhRyyWsNTVkNHv+xLjcyzWiAweAaiOem48D8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e9e1546-64ecf08d-8d52-41f5-9b9a-95c463dd21e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c5b752cad8a77f0c6b603e76ce3a119412284ae1b1ede67e8965024c3a9d3e5
Date: Tue, 12 Apr 2022 16:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649781118
