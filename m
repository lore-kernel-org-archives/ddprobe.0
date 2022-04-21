Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B8E51363
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 00:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650500578;
	h=To:Subject:From:Message-Id:Date;
	bh=ka6BM0qrU5tUovBe5sUfiF2LqZTP2Oo3/wL3KpTW7dk=;
	b=DxHJjO+YsQ7DFIuEgo0jsvJ0yIZAQeR6qB7h2ZTCHk2fvBPa/iReqOjzAFQVmvdR
	K+pzBzbceoO7DKFhQ6M9QgjaO1Pv9efpLoDweAw6MuNTZ0414VogQWtieIrRwKi8lT4
	zgmipseQOVDUFXx/jWgf8v4IAfQwYNuzHW7vQnNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650500578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ka6BM0qrU5tUovBe5sUfiF2LqZTP2Oo3/wL3KpTW7dk=;
	b=WHlSYcuLja2rOWcGeW2W6hqYFmlQH8I1EF+ebTWTG2o39a3WYWjn8ZpfMK9SS5go
	KonYWPV4EZGfXa9O2LPGFYqzUYwpgU2e+lOCHeYUD3o8CSFoM+c2mzczBTDmCvhI3zo
	qKBAdJG80xztTUEVttv+VNVIsowgRcKO0UilbbrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018049802bf9-f901dfa4-4695-45cf-8c71-d3821dbdd9c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac200ec8dfe622b19564ef9a8f6766f07e9cfcb2c38f26b884357afd6a8a5817
Date: Thu, 21 Apr 2022 00:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650500578
