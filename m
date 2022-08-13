Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0BD367
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660351252;
	h=To:Subject:From:Message-Id:Date;
	bh=wdi1hO7lulhSPwkIQY85D1cd4EOpz/VnbUxxOeUVO6g=;
	b=F9h0kvU7axLDmM73/wxT+iW4umorA08JjtKZRDHGnxsoV/AxpeX2uyNxZ0K/jBby
	8bONuBjr7F91NOTtkJO538KhUZF0crkrPhSTjF7XvgcAJNdOIp18gUR5c+cbo1qBpRx
	RgFLcTMu01DzEED1Fvrp3o+hdJ2XhD7AlCGR4V8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660351252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wdi1hO7lulhSPwkIQY85D1cd4EOpz/VnbUxxOeUVO6g=;
	b=jq5USuiqY7MUldrIkrZ4h5vUGRusXcGCm3mdIujrIOO2QBY3DVEkzLrmdFmRa0Vg
	BcXkKbGKCmQvjWyIbEKR7N/tMcUouQAiVCRFhh6sjJVb8mI8V2sq2ZtVSM+7SUZe3hs
	rsenqsRCs5paZJMND6lFPBQg8gQ881N5Obc1DnhA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294a58863-578a4372-a432-4322-812e-068e12b3274b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ba8a092fb08d5271228b328c74eb23dddcc1afe911dc69e22815f9be75b0770
Date: Sat, 13 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660351252
