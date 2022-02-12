Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821517A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 18:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644691833;
	h=To:Subject:From:Message-Id:Date;
	bh=0LLLT7CKlAk2BvmGo1gR3Njcp3TT7C840riRlQUDxA8=;
	b=Cap6uCTSoUN+EULHDKEUo9GRp2bV2ECZ0IQsvl1/pvxOCQujwiXxWt49o8NwkUy0
	p8R8A979lmU4yIk4R++ZALHBbp6zqdEizTVuTtbtUCRkLvgsu8jkinEp3y6YQ1o5bOS
	vQkI//ytsXN/YlnLABuP6V4r2iH5/PkB4l1sj5SI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644691833;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0LLLT7CKlAk2BvmGo1gR3Njcp3TT7C840riRlQUDxA8=;
	b=d+qZNO7ckLLZfMBr1CDXBlOO5HGvXoVZBhnFvmwMCAPCCgA4mKLtD7rhobt73ndy
	up3gdVr6uxenP1Kllgd0jBucfeUjyBJnbyPTO2/GXKd3Kbd/+eQSf4TZ17Wjn3gkzDu
	7+pGVblM80kiPQOsokUDXvtk8+BqdzxH604jQvBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef45c33c-675ab087-7d0a-47db-bd7b-7f55cc9a457a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c42742f5f7bb32f15ce1a9319367dd5fd138382562e83288cf3b9395f1ab1e92
Date: Sat, 12 Feb 2022 18:50:33 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644691833
