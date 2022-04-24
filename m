Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125AF7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 11:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650798658;
	h=To:Subject:From:Message-Id:Date;
	bh=W2FbgZvIQQ58vLxZZqAkmTE0Fx+s+vNT/pwvMgd8y2I=;
	b=k5BfdIP3YNNRq9af3B4tCRdJhZCAZqd7KZWwGl4hk8Ckr/+hcDSgrRlQ7RpnJ9x4
	19EOvdZwssCwhoG8AKEyZhjVS458McZedugKU5TiyUiZtYvgZMFo8Bo/+0xNNwbdL4V
	uSOn8R0/xRNg0PgAWv72EjuCCBzF1ms1ZT5/MNGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650798658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W2FbgZvIQQ58vLxZZqAkmTE0Fx+s+vNT/pwvMgd8y2I=;
	b=TTtKz6GfpCJjFb58W0tyz/62K9Ti/NiGzcje7NQBk8egaS/zcQqZkSBLQoWVNTSY
	6oRsbg/hHSqVjUtTZVyLhyhNMoBT4jTN/BhiYd/IxVUDd5kcHJ2BaEftpwUWqZ5Wsk4
	8rU2UMM3tK8RiLC1O6KlW3UxLDkYzv74lLCyLdYk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b448325-07db7302-75e3-4c2a-9db3-17bd298b56d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1509f22badb2597634f60738202a05ab7e826d17d9a89af469a337a448a426a9
Date: Sun, 24 Apr 2022 11:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650798658
