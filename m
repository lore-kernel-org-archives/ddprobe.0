Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F68F320E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650022498;
	h=To:Subject:From:Message-Id:Date;
	bh=zYksJlDX5gxGeCpjSaoB9bNIe0wPoKie+hDCtnOPhVE=;
	b=Z+H02uxUB3PaUv0jT/snGitwa1T3nr7UhmCndime5AUb7iEZ0+Cch1Hy27ZqMUoN
	bHKHlJkC2v1u5xn1NknWmo3r0xMzPJw05CfYTujM9bRb+bEccnXpg5OgaiXbVAClPAU
	7Hq/NDZ01IlgGNR3l9UQGPQ+XiWZysZ1ygVenDd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650022498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zYksJlDX5gxGeCpjSaoB9bNIe0wPoKie+hDCtnOPhVE=;
	b=M3kU2CNeXF63jAcCmMX/vs0Woy1zUv3d0uVufRqLZFEGcnEbiNGBGcJYmHiaIoY6
	8O2DfkS7Gh4Xaba6XYkzxsFu20a5dbyIJoP+wb3kSqm61zB/7RZi5oDS4ebLiMV2tfG
	nPkMCJsPvPoY+YkZaoRzK/0/eGt8ddFYAZHjv/SQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d013ff2-b9d64b7d-108c-4e49-8f15-9fe7b711f301-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7b05b29d5c9baecc9570bc55e7a3e6e5c0593a71aed4d03cb08bb9e598c76f9
Date: Fri, 15 Apr 2022 11:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650022498
