Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5972F38
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647515785;
	h=To:Subject:From:Message-Id:Date;
	bh=R7u0cKNznKWnvEWG+Mkd+VVsstB15DHrpI6O6m53s6Q=;
	b=b25ZeuKTjnBRzxvgOV7CAsNsXfa/zm04NNEEzFESpi3nz6NUcjxxQTzKm24eXilz
	MaeHhVOI1aoTldpt1eW39358q4uzj1pnyjjC9dDyqh6GAR1dBfi7qqq+NPMJQ1k0dLF
	G4zTSIrBB+bm3KNdZazdkxTcmEb6s+ghS908sYWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647515785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7u0cKNznKWnvEWG+Mkd+VVsstB15DHrpI6O6m53s6Q=;
	b=kR9sq694KBYY7wE+HfXD3ZQ/2wlquDjYoel9warsHYgq3ElAnQ3bEWJEWu6SJeD3
	QiZ7ENdru5pBMmkM9JaIQ36YqOfBzzZeFKs/74Ia2MwMVHN2kbjBGIwUK1WP7sUrJYg
	5de1mxGxhi2fsFpC02txFooNqPoM1iRcL3x3eQGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9797d6d2-72dca778-82ae-41e8-8a9d-c91befa5f792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 152af5bd43e9617f72c837a1616c8a89b09ab24232397e062b7bd2ead64dd25c
Date: Thu, 17 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647515784
