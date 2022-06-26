Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF4507A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656278812;
	h=To:Subject:From:Message-Id:Date;
	bh=KkIF6Ws70DLvIBGJU/l2lMx3tIwPjj7kXPJ80p5/ScM=;
	b=ZeoHG1Wuo99xOe+dagUPhxyTXZeeNDmfgPtmU4n/D6+fVOoBgvVmIJI4qsBkEbDr
	nLFOzMsPoRu3kUpLqeEMASTQCBFNJonUsji64q3q0NizCSfkZ6taQ74qj/B32BtIK6x
	3ozyc6mtbDw9unVrTJHCdYX9+/mB7A1kXc+lzKns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656278812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KkIF6Ws70DLvIBGJU/l2lMx3tIwPjj7kXPJ80p5/ScM=;
	b=CTh95HM0rDdlRsrU0xnXeSSBz/s2L0e25BSdwG2vweU/ZpwL16YJ5YnFKADUbyhP
	0EDGPV3Dw+gjnqx05c8x1Qu0ObqmA0wdg83xhrKl0uIDCENNP6MDnq5aWMT5pQBRp/O
	h2gtyD3mqgW4/VO65q3XDTLFiS72bPTWmtA+9JYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1e90680-f4d374d3-c169-4648-afa5-686386fa22cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cc07903d89112b7672a592c6a3df5505a1f5403eac7efd273811470c5abff5b
Date: Sun, 26 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656278812
