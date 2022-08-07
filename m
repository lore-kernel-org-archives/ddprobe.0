Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EA11363
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659861652;
	h=To:Subject:From:Message-Id:Date;
	bh=355/m1hOMwdMMuH+UMZJnmh1rtdDdbrzKsT/BIUCDuE=;
	b=QM0SQqmH9Yjl6v6N+bhq69ymGq4HjWN0jnDVf2ogLXQq8xQPhOjo+Vw9TMBpqkrQ
	UTDS2irUt9pk+w2/ZLxuQ6jn3nzXPTHSKqKBnHABe8OSA283XmHoukavxsoU2doLnOi
	+XglgmGVrhA+oy6IkIxDPvX+Y3B5TZieLAnduWwk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659861652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=355/m1hOMwdMMuH+UMZJnmh1rtdDdbrzKsT/BIUCDuE=;
	b=kVckaq84N0WNQARgyVw65BV6LQyWBCQ8mqBKu2rv26g1jVbUvVS/TgwGzmVGxBbP
	YZVM0Hq3qjKmXgY1ZnhyOdCdftgJFj6QfMDonCLEtDSiawbTAKSqMPcqY16gEiGvHDa
	XnLN1x599vLDlq28oqLqWiFQkZ4F/BIER3cNnhK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827776d498-da748863-2c72-486d-aeb2-7e20bda71b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb5178f5e89e2c8f5d96b85bce8865f98eee1141cdea061a3d594a33b65e848c
Date: Sun, 7 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659861652
