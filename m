Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED29A15A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 01:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656121612;
	h=To:Subject:From:Message-Id:Date;
	bh=r/csEX0paDPrrCRrFsYL8ppG10zK/PSCAGke5kWSHAE=;
	b=hXUvz4dZIPhyyh5tnsmNq9+21oskhNuZeCzLQBdaDBI7i/6J5iId58mSHJOUrEEg
	TR6WSX3uBb5z1e1BW4mvWYpk3meXfsgM0Oebn26KHzF16S3Q+dOhlijNSsa9TMXPQEb
	Z+43VA0vrH+uXR7a5ohQKMIGFXftFoTRg6EUef40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656121612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r/csEX0paDPrrCRrFsYL8ppG10zK/PSCAGke5kWSHAE=;
	b=ji6jC7ykAYO33FaKeioVvuS+fZWBUGrSqf3vtkEQb0j6SPskSEb41zgl37Iix4uL
	B5haayahFW2Aup9LJzREvtLvQ5y8/MJ535OYgvhFyAkG+VKP+nD49cOHzi+LxNDQ5ij
	Ta4yFmRt3R3dTzagqtVObZSYSaSWUF6wXczYz23k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181988a5829-8a05ee0e-6f06-41e3-bb40-47ea5abbbdfc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 313d2934a13988fd8662ceb27da2a922ea4fa078042b598fc0223bbcc9925594
Date: Sat, 25 Jun 2022 01:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656121612
