Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA857FE
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 02:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655002379;
	h=To:Subject:From:Message-Id:Date;
	bh=sVqFRYvX0g2/geL9HXjiH2feISPZCdp6Ckn3+v8tkTg=;
	b=GgH3G0zsEqNYXWeeppAf1OjGc8Xrk/0iLhGIoR17NtrIc15+uE/pAXryNrpENVaM
	Mxya+3EuNDZPvKVKjZSkEKAhNmxMr4/ZyJVnzl0+M6n3w02QxKM0bZDegGnz74hY2QD
	TcE37dLr06RN2MPo8utppOyBde6Hoc75QhCCdCK0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655002379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sVqFRYvX0g2/geL9HXjiH2feISPZCdp6Ckn3+v8tkTg=;
	b=Ts00waMFZDC84GM74tQCPVPs707MeWF2CIPXylaKrQuCbkMQdLogluVM7sZ0opF8
	sco1x0gSP5l+P0XwE/jpvIkCxPbjncSVJCfnx3CisS/9JBeS2XRCo0FsDMvEQgrFENL
	uE5aUuDKQgf0uOe5JGRPXDwhhKlvCbnOWpx6q9jg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155d43424-807badd7-1345-41a2-80c0-bb2679a15cc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de9fac4ccbd75b0a24433a71f41c168226bdaf5c4c158cb91f12da245a5334e5
Date: Sun, 12 Jun 2022 02:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655002379
