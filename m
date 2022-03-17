Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C97C2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647482784;
	h=To:Subject:From:Message-Id:Date;
	bh=8zl/TsQNk9UgVFQshNNpVAvee9RX1I+YRgrbUidR2b8=;
	b=CgClsP38+nykNrIoRoGSXcSjbRJ92jcUHlwmxUmmqrNr4KzWHpSf+LNLv+BrelqG
	8XYz4VpXETaGysMDINNFe9xa12OOp3op2yNctpZIl/MJTCcvHEFCQvQnmOauxjLgxiw
	J6+vY3uxyLSH1d3Z3od3z913zLrk2NeUvF/nnAfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647482784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8zl/TsQNk9UgVFQshNNpVAvee9RX1I+YRgrbUidR2b8=;
	b=jEDAwOOPF9+pzPfx5RyEfJFtFUS9tz4FSu0jnsMrOwCEpidaEuRnvU0+WZtvBgbi
	j7jwsI4FaQSN8PM53SzW5ZudR86AVx4ilSjeq4m3nSgP03VF4IZgBw2EoXHS9yiIZQ8
	H7cLYm2SV2b+a/V/7rJfvblScHZlwzc4UhTfKGp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95a04bee-3aa351e9-f2e9-4140-994c-001e398d2741-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d21068808e702c56a3fa8b90e652b2844db0e93b0b5960445e0d456976a1884d
Date: Thu, 17 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647482784
