Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78E2E6AA4
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659646252;
	h=To:Subject:From:Message-Id:Date;
	bh=HkltSOVsILJvCI2Urfsynv7aSVskbLxhpZQUzyuUN8I=;
	b=dRR3Z6UcvUHPZ3tltjUOng3gNhAtr5iHpbhVRiTUlBHeMqUgldlWrzslv4fxLYlb
	xhiKzNwTt+yl1AmkD9OPrgJh5HwUYdZIez1eDYAtLCAEMq3RixrH1UAZh0pfhaPgAYC
	/GUcWT5nOi1NGlND2mT3S5OYSD4WDJqFQ+C6cwDI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659646252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HkltSOVsILJvCI2Urfsynv7aSVskbLxhpZQUzyuUN8I=;
	b=fQ9uM6Ai9vEe4EXzqbfI3nZKfly0Rkh0uo5VDrlcdMuvf05Fj5q2muuA2hTRuSy1
	q1OmbVTmiw6o/BJkVcBurm4DGbwgVissZPeUFHHxBHsB2afCJkn8P0CizHJ7HO1FTyd
	2QnOACqqGAe3A2NZ5ACmIp3x9KgaSu+Q1g0amU9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826aa01637-148d1c21-239c-41f4-aec3-2a2d1ea68682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ac1dbb7d05ac23986cc1c149f040813740c1b9c0bf5d66d92b1ed54ee242d1e
Date: Thu, 4 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659646252
