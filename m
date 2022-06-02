Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D47E
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 10:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654167599;
	h=To:Subject:From:Message-Id:Date;
	bh=cYK7feJ1L/MK7wEjkJMIaBnQBNoLM6xrHup70lOrLNo=;
	b=YlgOQTNeLfcB4oGFOhESFXNBv37r8bnjD1AEGSALnB+AIsr9iTP+s4rLmanRzHAD
	Ub3qOewl7RtnqgPCzhntE/V+eLRARjuTFmQ/qSPuCwbFlCJdjG0s4CQ9jEkDEw/FEoM
	g2cjP67SjbkfviPRLqO8vhRjBcoTcW9iZ5kZT6qg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654167599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYK7feJ1L/MK7wEjkJMIaBnQBNoLM6xrHup70lOrLNo=;
	b=dykG4k/Oog5tJrQ+rgq9hbP9ilvm0aDHBmkXFDVUcfHVQn8nCQu1ClMVF0AlpikO
	OkDH79KSisoF0fl+BDvHOZWVG/ufVlPTmASSpSnni37xXAJ2K5XKxy7JaejAzErCU3p
	1jHm4Pgyxcexhpq3eWVWtQKdIHLV9iR1WF3JvgTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018124127903-4bb29bac-20a9-46a8-997b-d131deeaf816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83ac695fff80831dfe4eb35238e2a67bb33079a2c96074be0bc41d6f02402d8c
Date: Thu, 2 Jun 2022 10:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654167599
