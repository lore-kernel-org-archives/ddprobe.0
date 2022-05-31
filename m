Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1074A3232
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654008059;
	h=To:Subject:From:Message-Id:Date;
	bh=sZd4ITz8L6mmZ6fGeCsvz5U/9NmBBCq7cy2PTlgm6PI=;
	b=gT9VokKpQXE1HkiSOqqkwmlwi2mJORIcaDbnZtBeVVI95aZaC5jGhJnSufjoAs3s
	3KYrTAxFM1dYdyo2WpeeBvCkjyDUoAWN8IgsJzbWRvYmNRsJeZ+L148JBjjKpOLrUrX
	aJUJNi/MUyqw8vBtXXDfJ89WZ1PraPDRZlidwCto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654008059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZd4ITz8L6mmZ6fGeCsvz5U/9NmBBCq7cy2PTlgm6PI=;
	b=Ki9QrZOZ1M4X0+t541TnalFwFuozvemDYRJ5qZ8Ft+UwBRWLbt8qnNPLasSIhuqV
	2N5hN5AZuiedwK9879B+5wEEubN9HedB0CRDgs3WVf1LOXu2QAlH6Cyjh0ny/g0Ce2L
	gJTLfE8A8L2/zMKb9xSAQuIEvg6WEmcgZF/yZqqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a90157b-85072d83-378e-4071-8aea-da1600f6a7c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce4e1088263f05f758c11899c248f808ea7b57b12ece2e2f7beb644068e13989
Date: Tue, 31 May 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654008059
