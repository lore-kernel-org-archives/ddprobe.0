Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B4610F8
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 20:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652042338;
	h=To:Subject:From:Message-Id:Date;
	bh=jVDu8sgbhBe0+vlcQI+5VuZRvqdD6K+Zdh+ZlVCN4eA=;
	b=GXIJCuGD7BDJeG6Lcgs0Uei9PfbpYBYeKtOcJ/BPQJupszJU40Qbr4gjvaM0KjkU
	BnCeHxyinE5S4NWqHLT2VrqYxI+qY/5afdGvkgKyi8zjQaucP16AvPhWEbfG630s13q
	HiXPtGc8qZu+AUihyAEnP66efEJXok4RSgJEXtoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652042338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jVDu8sgbhBe0+vlcQI+5VuZRvqdD6K+Zdh+ZlVCN4eA=;
	b=bdrRcdAEozPXblSQsVQd9Pqg+oUgfocjgvBlFiaeYttIWB+lzLz74qex4BChPkVb
	d4WtwE+0Gq/xxEwfp43Q/32TxfiHub78YdssAhtKbhjPyE6yYb8H3gOt5ui+t0lxN0p
	22pT/nstuhekWdMwV9JR6Vbs/24MnmhD4yQ33P/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a5658fed-f5c7954a-8e99-4150-a5b3-9a7745c7d1d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18e4a497adb421b20aa320a89dcfcee313a682bb28b8c6fefef019fcb43f1017
Date: Sun, 8 May 2022 20:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652042338
