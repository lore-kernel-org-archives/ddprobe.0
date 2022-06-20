Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF4F7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 11:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655725979;
	h=To:Subject:From:Message-Id:Date;
	bh=noNkW1BVEIiHq9dXiz6KG8SI+yAKLpuAaAI0EX4vOKs=;
	b=SxGmw2MmztcnhD9/2DM63++rtU9PIGFYEXdvM6KSAyuCx1A1GqKd7IgxH+SadmiS
	ZQJzyvROzEaS77wDDnEItrZWBGjGSAr5eSy1KqUN2ur4rLs37FpnbKVNspcXCIK1Fcf
	1QTGhrw4QVyyCZjzxAjWya7d87QM5olFDSKcIq+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655725979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=noNkW1BVEIiHq9dXiz6KG8SI+yAKLpuAaAI0EX4vOKs=;
	b=dA89gSADsBOihcGfbtzSKHmcMrWk4xU5D6g4fRqO/IzmiUhawQnLWU+F45KNKe5z
	QrP2x/nwxZMQP/Tf3WF17IXXpn9aodhUEYH3QtshKkEw9EEWcKoPusCxR+xOyeiIiH/
	W6cynQ0S37fsbHUqQEX3vWJZKjRGrnbZwqFrM4rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180f57679-ed0a87d3-a0c5-4a9f-b6eb-3147e2b7074e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5ce114ef6521193068ce8d2d91dcfd7340ecb043caab0b45080830311ac6c61
Date: Mon, 20 Jun 2022 11:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655725979
