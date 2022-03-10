Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8065B7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646900484;
	h=To:Subject:From:Message-Id:Date;
	bh=Nr2RkxkLdl6YObWNG4vmM+Kx2FZuhjOUJg5mMfckkGw=;
	b=NI/KxbZlQeGWLzqUxJu/Umpro+t/xMfgccilyypGCmc5FP1spXQdiToL8B+z/BDn
	LajY3rqW/ofwyROi1oiCzs2UWaMievtjFXnhg/JSrofJqyc0HJtZPCUEerCo826hZ/e
	U4kML6acwxQ9nrs5X/RdEfxmsdz318vRLALMwYh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646900484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nr2RkxkLdl6YObWNG4vmM+Kx2FZuhjOUJg5mMfckkGw=;
	b=YkbW1VQn3A4Ygtzz3nbEyavsTq5qUPKobQ2WT5N3fhpNr0h+izEbDzwwXFcwI6dK
	4J/FddH3zmh2XIlBQBBFKR0ebyatuLwakA6hfEP0iEvs0YpFSQ0Nrzi2y82h7Sad4zD
	FLriGmUxaJfEWoZZkvIYqKJYqJuQMYfkbINkAywA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72eb1aa8-1238ee62-cd77-43e6-abff-c5e88197e208-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4909874648b116d9fa3716a05b29febddbc019b32d74cb484c0d55006fc9326c
Date: Thu, 10 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646900484
