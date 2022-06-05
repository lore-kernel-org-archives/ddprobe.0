Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139971854
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 12:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654432079;
	h=To:Subject:From:Message-Id:Date;
	bh=V/pI9S3Om32yhREqSdD3fO+J1EFDT2S2mWOXWGbozWY=;
	b=DTNHJzKdfrnGJBTjrekVVh5H/gdP8gd8nMzD81fsQoPAumLcE4O1Jy+ASASVuvwF
	FSyKGSkhZgfDLDczAn/WLzSZxPyEfmj8jzsoGAkG7Yh9gvAiAj6B49UL4gH8c1ub3hr
	LiI+xcKTZPEbTw3MsrfveaUEo9icG58s0q9+Z7gE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654432079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/pI9S3Om32yhREqSdD3fO+J1EFDT2S2mWOXWGbozWY=;
	b=gDSnabsSjnUO4RpaGLvMKrthAstl3IywKOPoNwa7HzHYBl4+nepMqvHMn2cczSQ3
	Xs9LjLh4Pma7wy1MObRrsn6S84t9zw/hY+UzCF621wgNfcizIGohIorgOXvFzkluRlx
	1CDkiEENlDOvQGJTel0UKuQ1gl+iZsexNQiwbKWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018133d61dfe-409b9589-f3a9-4132-93ce-938d061fe73c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0723e82077af6bda2e952fb2f7fe3a613c94583a9d7aaec588119acedba48837
Date: Sun, 5 Jun 2022 12:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654432079
