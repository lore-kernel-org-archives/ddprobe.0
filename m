Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3377B7A
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 05:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652590979;
	h=To:Subject:From:Message-Id:Date;
	bh=jFMUGhF4n9WaHwsqAV79pLtkXppZ9pr/iW+c7Y/n7Ko=;
	b=bRPPUAFFF3LSYX5sDjTyuc5wv6+f77QkUzzQKun74txGgyYdffMC5vdGR3v6kuEW
	TFyWgYaSP9rZG3X2+4WhfMGQms2OyN5KK3Ns4OatTx2hUXnsnJGotKcKrW7fWmiZ6I6
	LHA+H1c29gwd1Sutb3/RgNEuu8BcmbFu4kUmkwZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652590979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jFMUGhF4n9WaHwsqAV79pLtkXppZ9pr/iW+c7Y/n7Ko=;
	b=UBQSOXnMv+aPYwXlL4BrRMuN3Mdql7yBXWoYF/mK/O1gIrPgZGkm9CzRKD7hnLei
	Dg/GaRdgoVnKzMv5ld1bdS5WY29zwMOd8c+ydPAgcofCTv7AmqRbGdyB2Ofl9DUSEvu
	1pd2X99byv8sBZlv5kY5KFWz7yXi0r0GLHe6Aqmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c619291c-ebd1e731-f825-4256-a550-0a7bb10719de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 904eecca4857ea1ac284961b833891fa24aa27c1325145081db0b5a3b39eea11
Date: Sun, 15 May 2022 05:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652590979
