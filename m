Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885204687
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659289253;
	h=To:Subject:From:Message-Id:Date;
	bh=4k1/XGt0h3gn36Ju58F8nNYLele3OjX4G376GY9OJsU=;
	b=L5k9s3ZPnpzFluO4btzGqDVcQxyyHp2a7UwcycrGvlefCqGiRh4/eQe7kt/1UUHG
	oNBXRQFRUicpjnQeaQ43YJWS/0jGA1OffvEP8rdWbj76nBiBT7m3yphOzDJMfjp12I4
	uLQoVwZw9/GRgWWzOEb0dCJmDzokPx+vAE6n1CLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659289253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4k1/XGt0h3gn36Ju58F8nNYLele3OjX4G376GY9OJsU=;
	b=Ow6ja9UytuCJnvAYxyi8glA3gE2shRqWHucwl46CKluBPaR1vjy967LHBcgMv5bU
	pCLz8gGIVpUr4IEFWru/Suu+9ty29cjpKHxaSwbzaklSYVTtJkWbt5l9ld6I79eJLyC
	Jb6+9KbRA/TpeIgZcbSFM7k5KH/NRRlWWY7XBzzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825558b2bd-bb067e4f-fec0-4a88-b9a3-aebdf9f56d71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93cced3d18da289ffec255f78389a3e5b739e618735a6826436ba329b8fc8ed8
Date: Sun, 31 Jul 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659289252
