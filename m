Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ACE7A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656245813;
	h=To:Subject:From:Message-Id:Date;
	bh=s/ajX2yzEkWAEQIDVuA/3h6iLI1vGCDu1jvo/hdgJNc=;
	b=DoR2vpoxxH9sNaoovtAO8ErQLAyOD15m88rq1YXmKXbS5Z79EkQ3FoA6mNe+O5TB
	gk+UPDTJjgy+DEK5BpLlW3DOMRq7wpS+DXMZgi7aJ/dgbJU5+pD+zz/p7xVQHo08bLF
	vgMfqTjXoOErOwNEXkUXtmchos6/GSd+zzpe8yw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656245813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s/ajX2yzEkWAEQIDVuA/3h6iLI1vGCDu1jvo/hdgJNc=;
	b=MJtDEkeBy8g6zmj9ceuYFMsazw1YTiJwIbW3M2/gHKfUw8MCPeKnV2J+5rccjtog
	Q4rQZXviTnGNeitOOK8pLxBRSuz/pSiZa2VdYPqEUsdE/okRKjtVeZfABqXL3hEAl1N
	O8OG7ySqT9FQ+qg37mlq7zHZX3deagkgiaN4TyHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ff17c95-c532ac94-9561-47c5-9e0d-a539d94aa35f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69f5cfef39505b3a0b5fa4dd2b26f5c0d77d46015e12c10572f7eacaa7993a1b
Date: Sun, 26 Jun 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656245812
