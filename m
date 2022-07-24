Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2797E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658629612;
	h=To:Subject:From:Message-Id:Date;
	bh=CCmnBZOlO3PzpbQsBcEXJOUnjTWaL6XxGnHtanvKghw=;
	b=VgGnRPCXxTN3++R22lEiI9kyOiZr6p2R3xO87Z7QDEpA2ji8b4MLfuq4zf0QfzV9
	ossnQBa/pAQasAOPawQD3UJi1W0Vj24XTqVnxmQKfaiHj98YPTJb/UExaOa+zYpcmZq
	utL0deqiuwNxUA6NIIkil/30l3tNhfSd1MHXVIGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658629612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCmnBZOlO3PzpbQsBcEXJOUnjTWaL6XxGnHtanvKghw=;
	b=bfOI+VSu7xi5QUS3WHHkNgKmx7BkZOAgoWA1AvAbh06kMEqMS06cDguO2FHBk3jg
	I5veiMhv5XAfHYFy+4L1dwBcHu2XOJvESh8/eIfK1knynm2xV29Ps4BhLh7skFp2ff0
	SZgCLWlzpYAbCcATIj+OMVUObyJWJvMjngB6nWhU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e0762e3-c01cbb82-0998-4cf9-8ff2-e54733a58397-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e9a740802d8e6f6ccb223637ad32bad386f0de69f389e2861ae2055dac3cc63
Date: Sun, 24 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658629612
