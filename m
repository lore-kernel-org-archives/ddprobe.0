Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585F2CA4
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 10:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655462759;
	h=To:Subject:From:Message-Id:Date;
	bh=Wy98GGD+wTmKZYHSp3CYzLPBlhDF3xy0S2DMOp+wZ4U=;
	b=ccwar/zo8/GGK7xNoqRITNXT3IJF4FjlsrSfoFM+suTctGQPJ8tpGSWNiCspQ97m
	hZXY+JCi+C5e3ywUrHdLS7utC3rCh+BM9YC4e3pGjqPfYqApSuhKanEkGGSfKeOzNv1
	orZ36p0X5R90OMIvvzqim27Uipo4KPC+Pym0meGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655462759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wy98GGD+wTmKZYHSp3CYzLPBlhDF3xy0S2DMOp+wZ4U=;
	b=Leow4tH39noYx8OyXOLhH0AKJhStvl9E3AahdtI9wKhLyYeDtCtUp1/2BwnSDSHH
	zQs0/qe8mFxT5j+e8N8KCIItxUEFTpw/3LNTpuZYczAfveEzTi2mQWp+OOzrVc9lwIx
	0P9S74LRt2sdycqgZTEtYtsZoluSDbf3PivL6G0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171450b34-feedd7b1-fe01-4b83-a353-c22e5d01ab5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 156a006dbd2490f32a69bd495367db19c0024555499dc120df2a9cb031e7ce2a
Date: Fri, 17 Jun 2022 10:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655462758
