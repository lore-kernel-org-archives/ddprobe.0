Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58B7F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 09:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654161419;
	h=To:Subject:From:Message-Id:Date;
	bh=gBcYrZMN5MZiZX/aw9RmMmZbeUGzeZreHYXi+vC2kwo=;
	b=Gj2fzh3XFazhf7LpHyRJ7sucbrYQKT+dFYy0JdEGPnYc9blW0hFg0TAKb33t3VI5
	GNaGYsQChBspLGnIR1sY+O4l1CgWA7FMaqujQiCaiyRdihB+EwsYr5W2+O2njj2dSVq
	zSap/CaXJPnuGyjQVCJgnKB3nW8OFKs5t+Ygm0Qo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654161419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gBcYrZMN5MZiZX/aw9RmMmZbeUGzeZreHYXi+vC2kwo=;
	b=FVyPXwMfiDdSjOALvNxglsTZJALxaAVEkyu/IeGz+axQvRz3vYzWeY16e1WtoArE
	QXlzq6vLKFlAe7EGWpJueM6DdI2RDJMCohe/1fNE6gKcZP289BITm4tW/Us3Q8jQi2f
	f+V/FpCfamRSTpEJWIzInZPg9NiP3aTNFfLLNBAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123b42bf4-c11de8dd-b60c-42f5-805f-1ef30dd7ad2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaccc85dc8ba6e076b9447e0e865c2e23cccdcca801adcb65f8100cf55f6096a
Date: Thu, 2 Jun 2022 09:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654161419
