Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8D763C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 14:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648650058;
	h=To:Subject:From:Message-Id:Date;
	bh=C3WXL03KxkBO5rdjYDzeamSgyrnDOygFf19UOuGD5bI=;
	b=F1lJOhEfHTK/lKWIcINUV0IdqlbslH7NinyC5bW2J4sCkJWaLK+HQHpDqCMUl0ej
	w/+HBRQtXGPRCxc4WU4PTiL27Th0jdFE8Ka5dExVOnN7hKmIsnzBzh/7/i1N37RPhUs
	qMoPbcabQYj4YzaStPDFmH2uYizLgOVyeQGwseqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648650058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C3WXL03KxkBO5rdjYDzeamSgyrnDOygFf19UOuGD5bI=;
	b=k+nQxHDkZEqgCgpdNonZm+HRvlPodwXIuV5rCO0ZG0zLLZsSjcNsMPTMCxB+LBgu
	mtCxaRSAt3ZPmy/MMfxYtdkDInt+EgIU405JlikAoIiJLF6TUY7ep9ayDNUzJapnQ1s
	jqYrzKkFXSpwQtiVqOxvfYvVFbgTBKzWbENH7Y80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb337a16-91119e2a-5902-4025-a334-bd7d982a87e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f08b2de27ba62cae9a210fbad0ab1909a2a12c7bb40620c1ea0e5947cc9dfe9d
Date: Wed, 30 Mar 2022 14:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648650058
