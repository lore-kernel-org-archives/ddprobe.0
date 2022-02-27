Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CABA7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645964184;
	h=To:Subject:From:Message-Id:Date;
	bh=/AyzusOh37baFeRkJQB/bX8Vc9267JH8bfRUj97tK7Q=;
	b=GircsezHTvu8+AprAxZOdb2gVu7d09QtkLUzV2qwWTdNBVGe1ZSGgerC5SUGAivi
	z/CaXI3FZ6lrC79CuXLyru96hm5qFz4reYEoN/TlkQ+YyY7sUFOJ15w5JTa6YHh2Bei
	4s2oy7araSQM4K4Mlww2LZvzlPqHuql2e7psBRw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645964184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/AyzusOh37baFeRkJQB/bX8Vc9267JH8bfRUj97tK7Q=;
	b=ibXlMJYVnGEABY6bR8o6dTi0t6ttFrdpj7InaV12Kl/2g3B/0ThGVgT8u8r0/E3v
	D0Fgnv3P1NYSMgTSfimZf8wIphKy/t7KaLamTWyaqimmuW+pQA8H8gbwN13V6EscKji
	Hcn6MGsQQrXSF6MDlffYZMj1vnqNhOqLVIFnb/uw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b1c4cd9-eb4312e9-d8e0-471e-8aa3-586f829f679b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f073c5c82b5a7dda1ff4d13c8ae1b65b92638963868913de2ba04011be56263
Date: Sun, 27 Feb 2022 12:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645964184
