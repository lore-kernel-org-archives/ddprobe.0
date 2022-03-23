Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E470361
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647993984;
	h=To:Subject:From:Message-Id:Date;
	bh=ZiwKuI0OPPuWrF6b/VWR6gTj14jwynT4e0/v12SKlqo=;
	b=ixMBhQ84/x/wTJw/4eQWHpca3HbJ0Cg00sDSNcVgrq3oSJdAc/KCTNH6r/lWKo2W
	irTnKqIGXh2EBWW8lTKgdE2ASog9ituN5Ppud8ZFdkWGpU3G2vo7Ryh2nTq4kfpnhGj
	/9NMULzz+F9nU9hJ/2GxD8AKNW3WrE2rcDV6sSL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647993984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZiwKuI0OPPuWrF6b/VWR6gTj14jwynT4e0/v12SKlqo=;
	b=MJQpT1pOuqSzt4Xou4aL/6ZeQeQcK0uYC0YGEJRNrM86oXpkxHfVg046ZBziFgn7
	bDexqfF1psdS0Vr8IRBvXBYzMHTaHE51028Z7h18+5AVAauDCDvv4YK1TxijY2Zz9g7
	RJ1JHyu56FXjKMgQcgdoS4ztt7Gu0XmXc25qZ3QI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb41896cd-2390ab62-091b-4c03-86c6-6433a012fe33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94426492c7e68073d6ecf0faf2b816853a8ca9452c91bd1ba5f01a1578340106
Date: Wed, 23 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647993984
