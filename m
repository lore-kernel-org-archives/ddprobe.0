Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6FD367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 06:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656396412;
	h=To:Subject:From:Message-Id:Date;
	bh=KUdLJFbJxiECl9/jhiFSemoOu+utIXq7PDZByKMBYMw=;
	b=HHRSm1y5F8HbwBat3sk0x4pTHdSCzIFRIieVudTUDaAFxNU9885iw1cMiBjYBS4h
	J+na4PUM4m5OULtdE6o4EXpHIJt7Qxb7gfkpL+XkGJ+VRlQR2IhKAPv/CQ43BdKZYZM
	KMYSojqHGPng/zV5ctlMoWKDriAmhXOjBs7wQICo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656396412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KUdLJFbJxiECl9/jhiFSemoOu+utIXq7PDZByKMBYMw=;
	b=CP4imp+Ihnc7/YlN2kc20ccZFSSX1uzg51nImyrQpn0xuMIfxaP+q9TmAmcc5rnX
	lgKMJhDqQDRyB5vHKB9+96G179KlEYaoGm8JZSWgW6dzE4ouzWcH8TJ0G6LTu0UGjod
	SctAcQifn6jp7QOH9O0H9GmE9AjAQSvjk/X7epiE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8eb757e-00cbbabc-36cc-4c01-b8a3-30dc024fe9a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d99bb6e389011fdc14e4a8f5093bca43e8a6a2b846d4cfd476d8415aaee7904a
Date: Tue, 28 Jun 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656396412
