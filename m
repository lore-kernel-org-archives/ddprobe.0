Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4503C02
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 10:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657535812;
	h=To:Subject:From:Message-Id:Date;
	bh=qdLjK/RvqiZ1HlUgwif6+XfweIYql43n8ygO90hys24=;
	b=FtWxEr+Z4Pd1xvekUBMmwnCGRRjjxSMqmFm5Mzpd/nVSi/9O3DGwJqS9vz1qhCUW
	Mdlosjjyh20guV+u1/7x76W1J5dAMVWJvW/5q9acv2ePYOf74L39ZEYpxNaEe7W4Cct
	8mBoOkVvNYxbqd+OD/Wnt23+NMGuxw8Zru3qZXCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657535812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qdLjK/RvqiZ1HlUgwif6+XfweIYql43n8ygO90hys24=;
	b=hDUxs0bGwPP4r68BBByNqUUpveooBVx67ieA8ManQ0oZhuPBc0GuuyhCG5tMavJQ
	Aw169NyoBjGRE5DS5/01eLYWYSP7EKiuAGrPfJaXbqfE13GbElKXlt6jaPSjamblZi8
	aEszftZ8GzEGlBDwKbnc+ofiInDIzxCpAVJqGZoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ecd552d8-7b6d3ab0-89a6-49c9-b47e-d8f7a57c01e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 222e914ccd3b9c52335f2a6bc9790e2d983b40aec968aa3b1b691892b39f6a90
Date: Mon, 11 Jul 2022 10:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657535812
