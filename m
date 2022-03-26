Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F35B3D71
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 21:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648328518;
	h=To:Subject:From:Message-Id:Date;
	bh=UzX7zRrE+Ou8/v0mk98egh++XSR4D96I1/6Rbp/pVyc=;
	b=CeKZ/nyE37L93gr8t7hHbYWyh0+OKB45u2EzWueMrf/R1MQI1MB16aaZ5NHA7aCP
	cUd3pfZTYFS+xVjZibnmzl3dPtUwKyX2bNUwP3xj5JmmK7kSwwIl0HnrBqbxvgbL/T7
	7h78OYNvD+TeKoGmQrkn5lucpD7M9GE24MhkWUb8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648328518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UzX7zRrE+Ou8/v0mk98egh++XSR4D96I1/6Rbp/pVyc=;
	b=C4q0WgUXITI/aXYUsa2uTYxJDuuAvKxV/MWP+/T5uu/N1p3qigICEU71VdhOfZQY
	jXqHuiDGPN53Vanz2+g2qK9QSl0OU6wDkwyamOjOeOkgB75E4NNlKQ8GQhIgSs3XDxb
	eI27URVUv2nvkDoTl3G11QXEMuwclb+hbvIgY4Kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8092a7c-ae839e97-295c-40bc-8817-dc66178fc8a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18ebe65a1649852ef9e81aba45b088e712f222e1b4bc62e372d81dcc47e18021
Date: Sat, 26 Mar 2022 21:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648328518
