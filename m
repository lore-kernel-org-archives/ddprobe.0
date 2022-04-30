Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9CA1853
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 11:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651318618;
	h=To:Subject:From:Message-Id:Date;
	bh=dPQsh+H3j3+INF4TTgQplCt3nlbcV4VHsC1drDI55qs=;
	b=VXmpWcsod26+vAvZdovYOcHFQy4mI8xPX2Z/VKpK0KrOh5OhEzr1NDa5qIFN44EE
	DrLspzGKSxRvutG9f8RVtThmKAPx0PqPUYUOWixVTOJizuufFfd5uSkjWtO0rnwrS+3
	HwOauxiKVFcoA5LAbKKgymgNHPMICSvbKxHXJcBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651318618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPQsh+H3j3+INF4TTgQplCt3nlbcV4VHsC1drDI55qs=;
	b=jybN7Ax10vzsWgNppzFfVVA0I3egv2umU4htkgXvu9RRGfjTGHL/Qeyc8ABVDIGy
	jfCeRM9aFCkJb2+4gAkGX8K9TdqzuPxpcq41T6UA3+21pz2rS4BQeYtziKQqySENEjF
	N073fKOND9xWs8y0E7gWFyLKWWvR9ED5J3Xt178A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807a4278b2-8269f7ca-6c9d-4fbb-992f-2e9bffe245e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86cae6fcadddd01fbc06379ce14e0635b0f95a5f8636cae81364296041206870
Date: Sat, 30 Apr 2022 11:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651318618
