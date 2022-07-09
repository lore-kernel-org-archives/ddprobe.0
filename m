Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E627A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657383412;
	h=To:Subject:From:Message-Id:Date;
	bh=EM4diawYB9zckC9Ns3GwAUxteETzgtjm2Z2LGncHXbM=;
	b=A/MdGINLikHEwC9rX2xqZoNAVACdPpkTG75ecm0Q64x7lPPoxSi4J8g2bdNX07LT
	pUWgespg3lS9h+FzDxfG8XRd8hMDXrMYsH+LovZAvjMImljRqo15XOUyfNdzIYeAloT
	ynJ7TLfHbJXEWPP5vnJwLxe2D4olVIJ6VtAwjWcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657383412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EM4diawYB9zckC9Ns3GwAUxteETzgtjm2Z2LGncHXbM=;
	b=IWkbs2TKOYHLmWCUPP18/daN0PD4xxqX9UZIiDC7DgnK/XYyD5hrxaHse2aHRRCX
	PhCuG5lwN7L9JXhBoxx6cnAPX8h7z3DzjAZ7s0aGxwed+rOCF2TUioAYvgwyRjuWOos
	PmpH5T/ON6Dl/PFPcEZ7k4fj7CbexbUJJWi0yRHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e3bfe250-418800a8-62ff-4f44-aa71-e84e948019f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bce957b34d69ce860a34b3eaa3178bced2fbb947a2b98a99544d0382ff111465
Date: Sat, 9 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657383412
