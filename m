Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE3C15A8
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658493412;
	h=To:Subject:From:Message-Id:Date;
	bh=siLBCSWksQgAGLg70gSCybA4Yf0qsP27EVHj0leS/CQ=;
	b=iYa6BOrKAtQOnt1IAiQ5yjSk8jK+Z5V0Ee42CPnH1uvaLjmU5B6sGoSeDLrr1UfW
	fChvRpCvl3eZRaqwer4XMgkKeLii38ueb7lxkFwtumlpLOcdyURvZGXvCEt35uhl/f4
	NZBxu2Gfx4FTkYbY68lomqq7IKpUVOgReZulyG6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658493412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=siLBCSWksQgAGLg70gSCybA4Yf0qsP27EVHj0leS/CQ=;
	b=BRacZOXltusC7CpN76IyVYknPs/6fXz1ChVgmpVKjTvc7blNnKmr/vA/ajNfwR0I
	k9FDilLlHJsaFaHtBFrFwYBcnouseGNX5/PegoDOttDVwC4aQ1izcJr7TbPnNlnmuNz
	Vt6AIgWe2iCDq4HauhiSERcd+X41/1KLkX0Iu6ZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018225e9239b-107a86d4-b501-4a56-b29e-79ddb3db8f2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af4ff9b0eebad9902090baf0c42da74a623cbfcb79d4ddab73978dbf088e890d
Date: Fri, 22 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658493412
