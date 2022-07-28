Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11A1399
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659012652;
	h=To:Subject:From:Message-Id:Date;
	bh=yuF4v9cwL5FbET66AyxPg6Tek//tqY+FvC04/vho+HY=;
	b=YyFx+CDA7ZnT4SBud+f/F6vSBg7wrb+rFBSxj0XOzgXIK1x4Jg0vd7YzNfxh/9hK
	U0TNdP5ZJ5J/jEtjRbROJVjFfhJlgBw4qFVGRdIfu/a8uZmJIY2dfhBOPNPXkFzLFGH
	W7OW80sracvpC6RgrDqAycdMSWiamuryI66CMv4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659012652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yuF4v9cwL5FbET66AyxPg6Tek//tqY+FvC04/vho+HY=;
	b=kRxsvh/3uNKuagmpjZ6OM1cRxAxRUcZZHpjHomTTKe5lwcmEgVcy8dospFEv6Hdd
	wktBOYIVm1T33QFOWPSFhZGfiGL81UVpfjd6reSHk8dXdlpdzTm/8eUUvJuYg3ugluR
	24U76m0OVweAjIDgz6uNY/h8RnUyUQFjRE1aM20E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244dc1e48-d23d0ad2-d917-4689-985d-7e1485ae0a6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76a47ec81b87482e1d27572ac0950891bc7c6567263108b4f592a48616784ea7
Date: Thu, 28 Jul 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659012652
