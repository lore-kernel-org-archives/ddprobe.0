Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6586F15A9
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 05:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653024659;
	h=To:Subject:From:Message-Id:Date;
	bh=s1kkzSyhUoiQ/wHaD5UNzP56yu2g9t20zXi8VULELNI=;
	b=eT2Pe6Q1PwsKSP6/Ij4CNZ1nKv+8FMe3ViTlznDd/WWuOEOn+SRhQVaEVKCdADGR
	W7LVTbvm5nH6VjFSRiEdRKKC3zeweooLqvVY8qmHtgXdukrCJIiQLKHGAUrAepDdanp
	iGaKN1hpgHxi/MIyju4lzpJqXmLMrSC7Ae6k5n1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653024659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s1kkzSyhUoiQ/wHaD5UNzP56yu2g9t20zXi8VULELNI=;
	b=cz1R/eK2okLfLdzhQUSF/jeYTNrCNePrl+OTRpZtuyREPbXrWLSwxfKSMwg6c12U
	y6WifQfzhlQmQyFLnThKUY7EAjSrzgiRBhJruMLgM8cxat4Q8UoukU6tCDyBW6jjU+2
	CkW7iWrAjOXEwKMt/G5jASnV0nHeUJGFjlSi7HSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dff29771-e4cf850c-6b1d-40eb-b8a1-56b31399a384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d02cd77bc42ef3ab5ea3f8409d7fe6e339aa793d8c5e029e559ffe6c5184074f
Date: Fri, 20 May 2022 05:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653024659
