Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B8A2904
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660200652;
	h=To:Subject:From:Message-Id:Date;
	bh=jniHZs3cLA2vDdfFQBPAxvgauQfEJPAMCIJhSdeJEM8=;
	b=OG07XpqKdNgOPKE/Izhbxlnd7svYTRFbsie9mso8BBzd+itXu6BZ6axfM/KZgndz
	cDEBBtKNJnjAHHdH7DnR2ZTMunO+JPLnwWk0njug0oe+Y2cEpHArqZ1+y3y8pQWGcY4
	FRaCJpQIeUXri5SxLnI/43H4TspOaeHPf4yMXe0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660200652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jniHZs3cLA2vDdfFQBPAxvgauQfEJPAMCIJhSdeJEM8=;
	b=jCl5c+HzaHodQTrnaqM8uxQU8NRy397BBwwoxCkq1Y1Jet3l8873b2CBm2xqRB6b
	Vo1aSU/5Z3i0+B/649SLrcu4cYiWNLU3xfptQ4M3XDLszLxC5YgbGNkddgNRLZUZ1kt
	7aa6uIyKSSPwpQNfy2mToQzsB5g95u3syS18lHL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828bab8eec-f3a33a45-e57f-4818-9f31-222a053a850c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ff1589db87c617882d877b0215ea136b43a70a1a283bfc402289f85bbbe31a6
Date: Thu, 11 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660200652
