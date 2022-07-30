Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A733C1E
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659223252;
	h=To:Subject:From:Message-Id:Date;
	bh=e8wxATuZhHRofV6al+17Xv9N5pXcbvjOf71OsmKsbTU=;
	b=hlxfem7fXpBfp5HqgdKbYAEaeWWBuN7G+ZjRcTeuVqaifUMzC70Turtc71MZQIRy
	Rojdq8RV9/VuECUlahg536stneRHNKm1/hzYzAAbl9Cf6+NMOdov3rdtTTPNK5PigVU
	6QHCjd2Leq/d7iDDQzmq6QVrVJjjGqFhPA4oHxLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659223252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8wxATuZhHRofV6al+17Xv9N5pXcbvjOf71OsmKsbTU=;
	b=Mrn463HoeRSxTY0RuV9L96Z+msD8hnePGzk1zUI8CZwL3/GVR103+qF5uk0pbb4R
	XoNFoZwCfx6jl9enm0YNpONCxc0iJHcu55+GW3SOjPx/URsFYGyqvA8c3El+26Q0TQT
	LYmd7sPJy+v04PQSHollnx70uvyNQxhevlh3+y54=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018251699e50-e49c83a5-e9bb-4875-a5bc-7520dc054ef6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccd4ff03f6a1c4c9d73af8ab3d5c780076ef79329c563077579688ee0336670d
Date: Sat, 30 Jul 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659223252
