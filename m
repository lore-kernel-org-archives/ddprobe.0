Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EC27C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646421385;
	h=To:Subject:From:Message-Id:Date;
	bh=6kQdvTiEkigsmjIqEezmjLUs4Pa/hQGAytOv1S6JgKE=;
	b=HaLTknNhZb22YOFxfkZRDAEuz50hhLMY2mHeemmZS4YlDie62X/I14TFbCVWw0kT
	g3vJSeVjilmALn99fCmZ/m/sA8nbGON+TuHZqM2xGyzLDsHVugNkXGNMSP0Hnav8YDv
	SNWIHIgd/IBjrLNwbStVKnto0EbVHFhIMeyLl8ts=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646421385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6kQdvTiEkigsmjIqEezmjLUs4Pa/hQGAytOv1S6JgKE=;
	b=EFVtZlSArHJRjMGBQMEZp78+NDiPAxwQ+ZMPYXnXwmHbl6lLg2NDxcfzKuNhaJKp
	NaTmA3JxVxDjqN98IzWONM1ZZfzcuNaXvDQGg/cYZqow+/frH4fyhREg0h4BomFW/0w
	SFS7PcCHsJlcL+1Vn2IAbBKCglJk5B8bcCMhnE4c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f565c9e39-e538cc7d-9bcc-4e5a-b505-a4fe4237f2ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5d964cb7dcbc10e96b51937d5f73c28654af388329475221ea2ec498bbe89db
Date: Fri, 4 Mar 2022 19:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646421384
