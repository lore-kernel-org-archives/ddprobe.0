Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D190628E6
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647411685;
	h=To:Subject:From:Message-Id:Date;
	bh=POHnN1+DC6mY6f2sltuVcejDx3iL9wNXApVdca0Cq8s=;
	b=Y8ya7so7Kj2mAUrZWdRl4DgQtKyGbAlbRIh3Vdiu3jWMzYwG/fXOSH5o+SM0l5Dj
	QJBWQ2dpYMMTK4vTqwU6583CkbcMp+CHut4A24ZjYVcz7zX8tp6ykIwHVxq++bGfZR8
	1Ghxt7QikJ/nqYJ+AcfjJRiPOw+lsp6QR9QYwOU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647411685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=POHnN1+DC6mY6f2sltuVcejDx3iL9wNXApVdca0Cq8s=;
	b=WexFPe/rJkGhOMfwX3KL1PH85dePMYveEBeEu0St5qqmLpCN6EqsTxU5o2kJZVTR
	tRLpoYbajbfsc8eoC6y7n5VypcrCxo40GEH4dwCB70sQw5dalm/39FLN7H6tN0Jnczs
	3DNtXnzWY0n2MpR+sOOTYYnT3jFmJOi3wEFY/7Ss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9163659f-d26bb0de-ece7-4e41-a027-ecb3d69571f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74e47e4624e4bf3ddecc73b51ded716916ae6b5944d5d24d316a1e64baca255e
Date: Wed, 16 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647411684
