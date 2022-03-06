Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BCE610EF
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646558484;
	h=To:Subject:From:Message-Id:Date;
	bh=F6N6DzNLCtbkexGOItIwbLj5l1chqDhD/FDbX0hbl1E=;
	b=EJfHxjSmbanCEF/PAQJXVGC0hvJaZMQiuUITN/8BSCU1BCFDFq6O0+3fso+oiJk9
	IQ8/saXei4GoO8Si5PiZJh7UUZ0j1bPA/WDN/0ncQ51g/fKSRNpAXuHFPTBUkXAbdgs
	TL6YeL92p5VH2REHEAP7GVwC8JrPRGDAknpZ02Cc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646558484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F6N6DzNLCtbkexGOItIwbLj5l1chqDhD/FDbX0hbl1E=;
	b=HHClXWcW+rgPSZHiZQ6GiASKIUk+HDVDD8PvFsPDE7/HLF5SSTTboH1Ni6IsdXUz
	V/zRAgS/khQ8B2MH5ym43DDJjzFFnZOOF1AAIgw8Z5omXMYeJ+1uMubfyVNlK+5Xn3D
	vTpNGp4E9/os7XiiX+C/pH0zdLb4mg4QnzZ8sTaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e889915-5acc7ab2-4617-4d6e-b018-80b3aa6109a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 959d78f1c0304f255d1b57c68fd664ce7d0c25e47f376d17fa9ee3fd69000488
Date: Sun, 6 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646558484
