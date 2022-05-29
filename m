Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30947B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 13:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653832559;
	h=To:Subject:From:Message-Id:Date;
	bh=ergd+XO6kl1k21kikwtFDPCSA5sZd0ZWoO5SCs33ZME=;
	b=QlEs0hL6UHe2AjS+MOJRLimB8zbupTS+Vp6aTMbUjiMjx1+XVrXvbzbWmZEFFi9H
	j8P7BzgsvtK4WAA1FMjCoYwSazXbaEt6skSOwoon5lcqi+37sxzjfD/0bM1QjSi8uXw
	nYnNhypi0Zrn34BZVM80/Gb3nF/+NBSktMO3U7m4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653832559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ergd+XO6kl1k21kikwtFDPCSA5sZd0ZWoO5SCs33ZME=;
	b=Y91c/WR6J4HTgdVujYoTMNHCy/21VOG4atI+Cx6lhGa5Z6rV5VNKl3b7E6tLDro3
	2VabJAurNE0CPG5uhXYXvQT497MSHMVPhzGvXYCO3tQAO1wT7Q4rZgMpqgkSbi+CidM
	+FDh3LwoO8/ovBva/5+A+kdWY1xbpHbdZNiYYyRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181101a2ac7-eaaf03da-480a-489d-a730-108170a2e355-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edf6f054da6308676230aa6965f7f55606a3413b425acef4ff161c2edd996ca0
Date: Sun, 29 May 2022 13:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653832559
