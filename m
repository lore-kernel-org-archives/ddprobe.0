Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B16015BC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660120852;
	h=To:Subject:From:Message-Id:Date;
	bh=ojYlKorGATxH3ewzAxzcxEaCmlHSG8iXlHgWkMyrY0A=;
	b=Mmb0OvrKVUkH8B00//rXd1Hh3asQCCo0rfXuhg/Hq22nRPCCKlb92DhIAlo/JA2+
	GBvvtyokoKjNZiTIJ/1HxiRaAcTar8gKBBWpcbi7Vf/2GiVZdH9kXzsmmaHq5NcRjUT
	+ZYgsOcBdVDvDt5LnwNpxy1WdlfgIB+GJ/CcrEXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660120852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojYlKorGATxH3ewzAxzcxEaCmlHSG8iXlHgWkMyrY0A=;
	b=S3Td+CmqFpJpS1OVbevmCNNwDmH7on2E89JQaaRr5cR/LFPfs1mr5e9UT4zmkhZM
	8zmdwQ7Gcmb8EjXCDhJDrHBAZjfpp2e14x1/kfV5aYINXv8H38Qvda7tkzsKtbjjkZl
	s312+juJcoXqbm3/iUrNAPeV6gjigGmQ2OWPgcn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286e9e859-2d9b8167-e674-4e16-abd2-1288fd1f1b13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f438a02e7a01342cdae000d0870a5c42d9277de822c63f528ccb5281ee937507
Date: Wed, 10 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660120852
