Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D657C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653367739;
	h=To:Subject:From:Message-Id:Date;
	bh=VZMVfMxP3xG8p4TPq3SERd+s0+o89HOwysQh0xZaI2A=;
	b=HoqefgSCW8lGATyAAXYoeZruFkjx73yrHktR8UNESv5EhJB/pmEcG/K7Tqs4woDq
	U01hdyOveATofABM8MrXgMa35izPEICV9KSMGkepuWjn/uT91tedjM0kSAZLQwY5amZ
	OlavNL9/JPbUDsgdDTGOE6vXU3o03U1t4gq1M8rg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653367739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZMVfMxP3xG8p4TPq3SERd+s0+o89HOwysQh0xZaI2A=;
	b=Rw94Uu18cfoNVbK+XFLySKYHThRLdax+rXpCgRRR8RfAci9+qkkc3pyXxQRVQKPr
	jnRBqqWcQHE6J+IfQpxezT4oQ2kFiGnIZRAB4p78U4ywR+sSfU77RCKLNrjeDGqOI9b
	DrVjzun6c9G0tq8T/3YAg4fr9TKK3FooZ9/k1a4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f4659389-b06d6154-7f9a-46eb-9d93-a5bc8a09017f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3513c779726092c74f63a0d4faff4ee21b9292c0ea40d22fca752d1a829f36b6
Date: Tue, 24 May 2022 04:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653367739
