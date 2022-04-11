Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F04041865
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 17:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649697658;
	h=To:Subject:From:Message-Id:Date;
	bh=E1jCMaCtDCPThHp5m+rf04WSqwg5RvaFmSMFxfz9D1Y=;
	b=cb3xJI5XXOCXMlLAYFrNhkFealHquoZhmAjFNFR7GVG+dSihrVkJJfHuiGe5PxDH
	360pi4JDxsbCPvTv1Ntw2kE/3nGGF3sXgsghKWW3ErYEn++9dO1wu8ba2cmhGumGXCk
	vgnjKiduumIgtCGBvVhVIeGgWob5GwQLCZG3oLSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649697658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E1jCMaCtDCPThHp5m+rf04WSqwg5RvaFmSMFxfz9D1Y=;
	b=B+puigfhZQgQ9AFnlhCZNYwlZhsq1JO4GRUwSJCN31A7+AdIeEJcAIgIuzqQ/VTd
	FOhcVNZGgvkuP5s6QzwX+qD2Ab1zW6Juvw3LwiXJmWNfFu51JbYIFRSBr39UdAJwF3J
	6eioJLf2NEwNn56900X0/AV6xuNWfBKFR7NeGIlY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019a495b1-a679218b-1001-4fbb-92a2-2db46681b3e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81e9dc83c7c41fb37f0f84cac4e5394e87934466bf40d407d0b5d17b146ec731
Date: Mon, 11 Apr 2022 17:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649697658
