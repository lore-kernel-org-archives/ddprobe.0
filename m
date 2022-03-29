Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104BB20F6
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 04:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648528798;
	h=To:Subject:From:Message-Id:Date;
	bh=6P50WN3bwG0NwPmQ9IqZhRYJfBeM4CaRljziH6D57BY=;
	b=LgcszZ3c2IbQePpQl7mg2Imi2YMdTE2HCSKi1HG/PM2mSVGcQH/ORDLBDU3kUHWT
	GnL4HPiw9j3N2tSa1/ETCkGEsWKjKJBs2y6F+5gjvuVl9x7QHL6AIm/Up4gGMyxQfsg
	K0rfMW1Crwk2AYfNNvJIzMxCFUgujMXPgu4kqsE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648528798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6P50WN3bwG0NwPmQ9IqZhRYJfBeM4CaRljziH6D57BY=;
	b=lCeB+y9Vc7cZ/2cjKCve1jjp6kDJaDXsBe1NTob8U+m+bTAbvLm1BrX3EbLiN4Rf
	i8garqUAsJz4+H2XOVtOfOi998I2/RKzq2A7fNaQCHK7kAlFvEredu8YPrsWAjIgQzK
	yXYgRA0gMtqeNpf3KVLcPL26yc2Mtc0MeDKYjYRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd3f93290-80d5790a-63a9-44a3-8ff6-6e31e909da92-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0ce66b0306fef3a147da95d410190a2d59c506efe1d33ec6a5abc65d4d8c556
Date: Tue, 29 Mar 2022 04:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648528798
