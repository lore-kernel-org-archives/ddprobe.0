Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6F823A0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 23:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654557539;
	h=To:Subject:From:Message-Id:Date;
	bh=+fDpglG/9Z5z2ub1Efcs3nKtRhF79MTqCHGa/yB0UyQ=;
	b=aH7C9YYTHNLrJ4P8JypFyfUI5yCf1btAWg0LOLf9AhfBxPsHmbWHQlLjBZkVywgg
	G65qWkOam+SgWFggqQjQ1z5TpaTaeNt9cKYU0Z2+bK4eF5qiGUNLD2aFcOdfoKagvQR
	FRj6zY/Apu+ySxtIwjz5SNjgSFYN5htvLJ62iQZQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654557539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+fDpglG/9Z5z2ub1Efcs3nKtRhF79MTqCHGa/yB0UyQ=;
	b=h+265ZNdHlkPg3IN9ZO3jPJrT9QzxmDJ4UulmmpkQlzLIFoCkl7TIKqfdC4WuyUD
	4Wbr7NCwqlaIZoJATKPm/1eoU97U3lOlGvJ49Nzy6XElij4x9CDDSU+Vm68R1LdGea5
	MjvzTd/NeH6lt8tEiFRU3WzsUs/h2NwsdzVd5mR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b507bdd-4d0d3814-425c-4655-b095-cc46303aad1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5021069d39a6f53ac0fb03ddbbce68a5f4d1d2b938e2083c6c42f1be50847aa5
Date: Mon, 6 Jun 2022 23:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654557539
