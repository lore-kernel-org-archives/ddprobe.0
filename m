Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D507F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 03:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651895518;
	h=To:Subject:From:Message-Id:Date;
	bh=xUS4A0qXRt3DW+ViuIP26K4BdyQ89FyqAq7vP4IoEAw=;
	b=SOqVOepHqfYWLirTXWes3sYkJtz/euoeouyk318VsUS5QC7aurC2NMZhNqns+JE4
	FUN/HCJa7VfyNX6T1mfCvYfxU2cNVc/ZCnxtYOMA18S9WUJ9d93UdxJgg1TpSPfFitY
	j0qQiJJetBPDCuee9XfnKsIxhZ63HVM1rnxKQHM4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651895518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xUS4A0qXRt3DW+ViuIP26K4BdyQ89FyqAq7vP4IoEAw=;
	b=PyM7UQCkS6pq8OTyjMpCnKkFIcC84mTrcOSyfDb4GfHaqAp2dNt5HXS3pl1Aeuuy
	+ACf3uLk4QhXvF5b0bRTcPSoSurcdSIeQx4/AziJeeZCLXmeEyWRBZU6L1Udd19+VSm
	fdJhTnwT0/w2iD0Jb9YKqVZcK70jXY1L8aDeF6HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809ca5446e-8084a8cd-eaa2-4612-9b8f-c7972f695e81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 006b961095693af6fe505f7770e3e319d06d38e1c4a2efe0ac3d390843de43db
Date: Sat, 7 May 2022 03:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651895518
