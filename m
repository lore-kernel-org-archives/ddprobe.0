Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221457E8
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 07:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651820818;
	h=To:Subject:From:Message-Id:Date;
	bh=43bp27nSKl1GERWyCf4IfNaJnw+qpGsefjOC0uBtg6c=;
	b=VvKe+t19lnW3Sgta3c/Gh+OoxA+P5CO/egJUdyj2jhAH12P8+VWMyRw1V5hlRZDQ
	Jii21MdQeKqXoC+RvjOzYDdnuJ0vbo1G103fMW6c9H5Q1ikTVKja+nQy2YoIkB9XkpF
	GDI/HOSSYis4pt9BVj/iEC8qu1xVtlRLRqlt66eQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651820818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=43bp27nSKl1GERWyCf4IfNaJnw+qpGsefjOC0uBtg6c=;
	b=F+6u2XtV0jkhAhGOADKXW3jde/aeRTPM/5/Gjh+rJijo0cr3vMWW+q1QdR4GzVbS
	UuUDq0iyBivNolE49ORcyKGyBE6VhBR3F2h+hUrc7GFP6PwhyRdjV46lo3sN9E7er90
	r/MOVe6qXNsmG4FDAb1cucpwQ0uhiwMnzvndp4v4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018098316f7d-6319d33d-c256-49c8-8efc-35e690c71f87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34e176623b44fa6d6afc2a611972a9bc3738ed5b85acf2b7ffaeee9b7dac6b42
Date: Fri, 6 May 2022 07:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651820818
