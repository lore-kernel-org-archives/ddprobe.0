Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EFC7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 07:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654501679;
	h=To:Subject:From:Message-Id:Date;
	bh=A3rP0NkrKuxAk5sjjjE3d1HFHHN+TjrN19P5dkBHTSY=;
	b=NIaORp4tqYWyWWTedy/pe51FXnUffWLW2yaUBqkkGRsoWes8vS1RoDzjCxxIcG/N
	p1I4CvU9vO8zRl7xJQ7zjvc0IJ/w90BQp/9NMvy0ODLoHCxNqqWCZvhDrjwrpkNv23U
	sjXZh2wotNlbMAbO8xJpX949q6wveJ3DOZrMQROk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654501679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A3rP0NkrKuxAk5sjjjE3d1HFHHN+TjrN19P5dkBHTSY=;
	b=S/1v0w5j1N+Y01hXu2zo6u20YfW+88cK87O/wP1kMHjjVQmA6CXMiNNz3Ax8FPlX
	Nr1VyStMvMwTbMUH7kgt1JO2u8CeRBIcBky9XRG7Dp6oOAZ4bVMbVg2TFrvmtcps6TY
	pnPjGwsvEsJsBfWcLx/rdr8foiVfv7td0AbjilE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018137fc207a-3ac061f1-f5c6-47cd-9b8d-2821953861a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 283bcac8fce2649c366cd0aa9b8684df8991ae5a04aed5ce12cdc5b2043ce0a5
Date: Mon, 6 Jun 2022 07:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654501679
