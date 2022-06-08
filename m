Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDA6C2F36
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 18:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654714619;
	h=To:Subject:From:Message-Id:Date;
	bh=q3vxHyCgPwyj41QCIDcEzwm+txvFJ5rHheLyD4L1y+4=;
	b=AwiI5HSTY6Yh6yFvv2BvS2S37Vzp6kmLHxrkwziK2PjbjBwycH0ODMItHpSTME0E
	kzwWNe4Lnragg2htQtRgL+EUS5J9+6RKImid99vliQMFw5PZiN9nidxNp6CY4Kwzjq1
	zrgDreOzaG6LuExKHK5HXBszmfFX9RQR+ACW9KFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654714619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q3vxHyCgPwyj41QCIDcEzwm+txvFJ5rHheLyD4L1y+4=;
	b=juCoOMiRUIIJLLO6ijFh3yCfgRzuTplpmLaAw6FKzmtHw0Z9cBDTonPBS76et2jV
	fktjX05AISi1zSa2RhuqVHXMozgb6PQFdpyZu1pca/WjMW40pOaq9g7gmjTkTjzPBJ9
	2om6cJgsJ5Y568M1mW9WJnYkL4PxNyQJ70otPqc8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144ad555b-89f158ad-1a55-440e-97a1-059a25a9f99d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2878c46a0f5ad4ffa6c04d9ef16c1db53203f8dcb8c023fc972e510024f78a4f
Date: Wed, 8 Jun 2022 18:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654714619
