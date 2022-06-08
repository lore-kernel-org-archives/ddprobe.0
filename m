Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F872F39
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 11:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654686359;
	h=To:Subject:From:Message-Id:Date;
	bh=V0VhNAxdPoKN+/ehaTgoAWh5wcts3Im19jjEG6DsgS8=;
	b=kb6rgLaIvl0Al945NeswIAoEDT66XTN39bzn2ZLJn9LOg5bNYFLOiTC5N6IqcfSA
	xowpKIGJ93Cc47KZNO9ihW1JH99KTLmtq6hz/pu5TFcVlwjyKLP8JwMrEq6G2tpleAu
	82EvO8U1fvX/IKZ8Cb53kq8w6JihSzK25VJ6SQ+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654686359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0VhNAxdPoKN+/ehaTgoAWh5wcts3Im19jjEG6DsgS8=;
	b=cGTru4HeKef8ixYLGQQXs1TyF59qaiZhsjbOghDIWZMQo7uXZGzE4wA7XYPVxbDq
	xFtjbEaBtB81ticrJVmsoBLOB9q6Zx9+idfPtQBk4ZzE2Num3sexQxZcuX0KNhpWBmo
	kB5KisSorcaqZvIINjbm/ZadkB+ZJ8or3m+i7938=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142fe1ef0-0307e701-abc2-4db7-b32a-564a87ccabe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e2db5419b3a74d4a787f89fb854bd176b58f82b78bf7fdb6031f546d94a58d3
Date: Wed, 8 Jun 2022 11:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654686359
