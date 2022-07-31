Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC0015A3
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659247252;
	h=To:Subject:From:Message-Id:Date;
	bh=UblvVBlf/TdLbtx7qJH5LkSFTTmk3S6vCdZefed9sr0=;
	b=L6/luMnHr7UgfM5ZEyc53sh3EMvjlC8olao9opp4kc6HswqBlsMS0XnhLmW0UD5q
	Vbn04kRkr/u+lJnw7VScpktx8bynyLrw/rY+9YM+7iPNgKhS2uLjE2UR3vg6ypLwSWp
	d5D2RuZtSxhTcw9H6DAn5YosfdxmbuTmAQrLroMA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659247252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UblvVBlf/TdLbtx7qJH5LkSFTTmk3S6vCdZefed9sr0=;
	b=Y7Vwf+Ni70Ipf6UoCdJVPbcv3vJGHkYbtfA1/bDGY4nKM7mJlFHw/Eg8e3svca92
	GBl8W/i1w70E59gwdHSO/3lVOFeWz/V+sDoQkSIF2D2zs5HsjhDK/CU2SDhWVa00A49
	CypRQNhsSKN7+J2Re17KldkZa35yCweB08saXMOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018252d7d46e-8d090869-825c-44f5-bf4c-e2cabdd3d23b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 358d1d410c4348a588e24708fbff55c79fc87a2cb6a7e002101aed1510a9951d
Date: Sun, 31 Jul 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659247252
