Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8054D4683
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660843252;
	h=To:Subject:From:Message-Id:Date;
	bh=PU0HYefrbtGqNIv/kCAQyn+wlPM8eDgpv7JF9fUSQNI=;
	b=Uqh9FLYIo94mFp8w9Cp+mhemhmI5pHZ0/3kuha6+PG5AsrOpxd7qQiRqGI95H9NB
	GPJC82b0l++GzY4r991rH1faQM1Oom41t8AZDwvAzL/JSwYHyKyACWe8VfkASlqFt1g
	I3N2E4fShQ5mubZdW+NagZsBFQGEx2xy8zFZESag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660843252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PU0HYefrbtGqNIv/kCAQyn+wlPM8eDgpv7JF9fUSQNI=;
	b=KiyWUVFnEGkzGHbqNzXjqy0fou4ZJT2ohFRKmbwLR/NslY27LCtjJQxFywkAMX5f
	tLP8ITQrsHO1ixVhFVMgbE6JTLUi7xeZnUu6/Mb6R+oM5CT5mqYBNo6nEUL87rYGav/
	Lc//xWCNu+4mUGEknEF+QQERhe0vvkr2c1voebSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1f8db73-e3295aff-2bdc-463d-a8ab-09859f439332-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d7c4902fd50f21ed4c8bfa443d0cfebdd21e6ba75c2ce5b32649f2ae690da65
Date: Thu, 18 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660843252
