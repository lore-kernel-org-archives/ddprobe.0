Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2787C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 12:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654691999;
	h=To:Subject:From:Message-Id:Date;
	bh=dno379ZfcuBv0tzR0cTtpl/9OXZ7cyhJ5Xf3GuQ+hzA=;
	b=kje8mhp5qj95Ava+eAU2+Wuz2X5PuMYA2dYud8ibEAhPBQxbXsS2AdJKlJJHkFmi
	Qqj0l9Zd+UDRbH9x3aL9k4bFbqAS96XfxZJq2ypaXl34QMHDSDbbEwyqB9SvyRlHnSO
	k8BtyuAqy5oXm4GS7519foPmAWSnwBCEl6e0jqqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654691999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dno379ZfcuBv0tzR0cTtpl/9OXZ7cyhJ5Xf3GuQ+hzA=;
	b=XD74PovSiZo2vo5spPdhSnGXsshhG3VgEafLWg94NMS7BD1D+SZcB/o7LSjY9b8/
	iLjzKMG+wR1iE3OOt1rLTa9tCyJs3K48BbRE6jZ8K5vs050/0Qnt5VXg8uZfLFfG4zF
	fIly5IaE8dxJZU1Bc0zaW6hIv6GAjL7S8Afa/NzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018143542e0e-b2b00114-83bb-4eb6-8c16-3d40fdd7bfc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 682ef1b3305367035c8f6ab7b3666728f5d039c350d9c1482e755baaa4310cad
Date: Wed, 8 Jun 2022 12:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654691999
