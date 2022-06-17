Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E32D7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 03:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655436779;
	h=To:Subject:From:Message-Id:Date;
	bh=TuMmcZ3lU+4ew1IFmMLqSKw6cE63ugOXaQroRXS9quU=;
	b=P44h0I4WNGljFqzAtveINitYd9J7DDyEz+phU9R1+whVmofp3AUmWlWqbJzozxgw
	YGE9FHhVZKmAS89zw2HoEY8RXx20AYCy7Yk6AaM38r/VGLQb317eA0B7B93cH6x58ms
	ifn1PXVYkMc3o5X5cmu8eqG0fzpRC8O98+75Ifr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655436779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TuMmcZ3lU+4ew1IFmMLqSKw6cE63ugOXaQroRXS9quU=;
	b=WzhZhalbgrzAwe3Yil0JJ9MjGfpxghUCWYUEGYV7o0PGdtJeID/yzFeON3/TTb38
	LAWUCZ2pSDpkZ9GtMTMdn4xFGGJpfr4/5TqJBKXsfjfl5GSg4wzvFaKWVzuEqCLzwZ/
	ahHZli27Vv0xlSgLl9XPJjIr0bMhDnsK6gnhpZ3E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816fb89f53-da5ecf16-fd7b-441d-8275-850439d50d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccec32707dfdcd71be056924967ab10109df05db6e271baedbd5b97be83ce4d4
Date: Fri, 17 Jun 2022 03:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655436779
