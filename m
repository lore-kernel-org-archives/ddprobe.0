Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0417F46AD
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 07:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649749678;
	h=To:Subject:From:Message-Id:Date;
	bh=qFNR5dG/hgkxMuast0tl5CTaQHRbtEsDMVdSi594BWs=;
	b=HQW9vCeQAb08KDQ7wkmyer8lwSApQJyspc5sAFMvXaWVoxagiM+lbMdu5ESr32RT
	pilq7Kf02jcEYXiFc8TwgBZ+RVF8Dz0s7A2b96VeKCPX27aKP0lry4xKgUawLafQ2qE
	vXbjHUNSLq+Yv52SLkIfJMVAWoJh1YNg4KnmJxI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649749678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qFNR5dG/hgkxMuast0tl5CTaQHRbtEsDMVdSi594BWs=;
	b=JkysTt6Q1hoRpdiDkSoE5hfETK7xKYvw41W9cORwiajM09tlXWzOEzlpIXZo0WOs
	lBl3/86fxSSU++F4laOeT3LF2UKt5IYMHs8vW8zUedOdOExM0fAY6VYfRV3MEYc1s6r
	UaPHcKwblaiT6i6yay4bAGnnElEXApQQXSbPcUYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801cbe58dd-6e5fc8bf-a543-4488-8610-09eb80574b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97a5b6a3276e6daa500d5dcbd58d00cb7417925354e9d874fe006c171e95986b
Date: Tue, 12 Apr 2022 07:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649749678
