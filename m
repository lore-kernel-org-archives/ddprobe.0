Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0395228FB
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646618785;
	h=To:Subject:From:Message-Id:Date;
	bh=hlUfUjOTgiNBg8UJMo6VyIFTBqfcTzJDahAemm8ahhc=;
	b=FTuvMyQZr2G/iSgfikE+ysovrUE1AELntTTs3WgvQoQW0J4zSpq/MgbUGWroBajl
	J73GLz2OAzEGG1chPtEI7X++kUt4gtxxE1RXw91Vu5xz+VVc+nYOa1PH3uGOUP98X2V
	omV0MHSyFYgMFcpIebc9tyUf5ySOryl7+jaN6h4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646618785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hlUfUjOTgiNBg8UJMo6VyIFTBqfcTzJDahAemm8ahhc=;
	b=M6RvPGVzWjKXKJRJ4XNMwbouYB+zXef27dQzGdnn3O2EF6dPGC9BShJVHfQ7su5X
	C5lS1wt8ERZSXnXXIcpp+5pvaPqtMTJPVuAi3H8BRCeefYDe8w4OTRUfWitVkYT7XyO
	FCjVN7kV/Qjmdse37loKhOnij57Axx1srNrM1wEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6220b3fa-a159afb5-ac60-4d47-aec5-60cb20025e53-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5491bfdc9bd972c838b9daf4ca3c19c31ff84a48e70bb15e50398355000ded02
Date: Mon, 7 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646618784
