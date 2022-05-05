Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3549E625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 10:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651745338;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZOS25I74yug644BQj7CEQk15U27QLD2ECv4+e2BHCY=;
	b=F9eiqG1jxL4H6yhEmLfABZ6F83D1kDQqxhoBrVygvBmscdCMDg9KraOt8ChQkemt
	vaW+tJB8NjSuIyJiL0YHkxLhNqTIRaKmErnRRDeC7QTr0UlExV8vYHrQ/nLbEhhrP5w
	d2KDeOBYq6yUHkUkhCU8x8iW2I5pBk68yzjMcZjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651745338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZOS25I74yug644BQj7CEQk15U27QLD2ECv4+e2BHCY=;
	b=MAjPUXK2dhor1CodpVj3Z6tYSRZXOChVh5aaiLE3IIfZF6rjBZ8tAfVr9b3QM1tT
	p5/05GNl6YRqqC9h6HI7kRd62yKfWbCWQH7xlvkL0HBqXk5rMjEmEpN0GCGS4XE6Q2Y
	izFGEgyrqp7yJRKKEn1Sg3rux009HVcP5YwKL4Ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018093b1b3ce-b243d3a8-d351-432b-a76b-89bcb6b9c7a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79104fd71fd3eeb3a2eb4395e44139da7f0abe9e9d1907f27574668fc222bab6
Date: Thu, 5 May 2022 10:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651745338
