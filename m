Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB67A42
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 05:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655011259;
	h=To:Subject:From:Message-Id:Date;
	bh=Xt74XtZoKUdSH4bcuh+dphE+UN+nJd7lYDNbBJajPQo=;
	b=VrMRJewqlj+oFfuU/PrNV56K+dhHa7HUEZqXbO3KlDssYDSa9adhjgJEdKYLlqBo
	0M4ZLZTF7izCC4eWK1OIKh4Ej5t92+0ZsYRIwzLV+rK7FF0kJSTIteKIVzQ3ggnPiJP
	DDA956i31n4NLQFPNqPAyGCzyxeJCYRTWoUZ0tA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655011259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xt74XtZoKUdSH4bcuh+dphE+UN+nJd7lYDNbBJajPQo=;
	b=aiZ4M0+d/M+QTHpXFjyaED57tViXuxtiNQ/WtX9ioYDvwQtDbuiqSnN81GWl/GqV
	gyMrTJ+jeQ7r2/vPY7vgEJeuBH9+pLxvbTCFJ08HAOITk4iQ+pUdfTCdLv8HvlLpw0i
	5utWz5JYNn9fE6a2r7ZoLg55B1uxNgv7E6bo0wo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181565bb397-9e02728a-47a1-494a-be76-318da4431987-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0a1548924230f87349dae5a03160e1f60608f8eda12e74ae3ffd866e08fc763
Date: Sun, 12 Jun 2022 05:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655011259
