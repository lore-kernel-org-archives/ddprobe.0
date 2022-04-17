Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB8D7B
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 00:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650154318;
	h=To:Subject:From:Message-Id:Date;
	bh=M/Gk5JfYVdzeLF72PaGCsnqDpxh5CHnifqtF0ifoiPQ=;
	b=POIJ+hj/ZLwJI/9RhaqLVYENNIwI+UfQduPkcXaRiuuVHH8DlbOtXqmQzXzJ78fs
	keHFIgoYCHWhHDMW/pGdviZ/dEdRsKescmCTyEPnAfzo8l0oBwHCllIvW14Peixqzmy
	R18lKqL9hDc/eRCCPTpNT3oY2asYYqXQW7Cj5U8U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650154318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M/Gk5JfYVdzeLF72PaGCsnqDpxh5CHnifqtF0ifoiPQ=;
	b=BtslmBVwhCWVRpfgFkynJViYtFdeQIjkHmAM+ckApdL+dKVcmYXqbaYrmqs13oH3
	iozndDBEerN9FoyQg5G6nqw08kuoQzajyg/ki4AWXtuWn52YK+gyLMFR3J7aaDYpzPB
	OyF4OtGSN3s0HyY55By0zEsCpQ2U+L0xZ5x6dWj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018034dca9c5-44681f2f-9ae9-4087-b5ae-e3b3c28d0418-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb9e3fad538cd81abead6e826a04166bf641b707c1fa692d3b02b7fb16bf61ef
Date: Sun, 17 Apr 2022 00:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650154318
