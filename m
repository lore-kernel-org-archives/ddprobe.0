Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0688820E1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 09:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652348339;
	h=To:Subject:From:Message-Id:Date;
	bh=QJMG5hoPNrJkLCkrH+sZUHnn+m0H+3jgX51Q6BfuuMU=;
	b=cO/y/yX/w0b6wHVuwtnPy6oM+EOFKaD0PEhE7uscCj1KR3Alw/NbmHn+X9Hd/OcH
	P/N/LUXS+JLwMlnxiRFoJDOFTOD15cX9RMcCaQ7nolD1BHahVdTSOXotwoX1pcY7kZx
	+ubj1WNjRf5JCiW12sZe8epWKZpV2GTWaKpWqX1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652348339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QJMG5hoPNrJkLCkrH+sZUHnn+m0H+3jgX51Q6BfuuMU=;
	b=Wwlp/4q1vD2FoD1NBPIFvsz5NrTZgwNX85NLQmiHzqfqqCzZIRnA9WArbJhgaeQa
	aVrUa+y3w6fYWBOuiMVDi7uWsGZkbJHMxonEHgyXeUVK00uLt0FQXuztizKTRq0x6ul
	cmF+XLh+Z/4axgpKrblH1RKgC91kGhwY3MG9eAqg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7a2c438-39e49aa6-26e9-4645-9908-760475288e09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ad66dd5c3a535b4e052a91ab410a851d82990df958b74c6dcec0a674116c46a
Date: Thu, 12 May 2022 09:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652348339
