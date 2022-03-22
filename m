Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DBAC6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647961884;
	h=To:Subject:From:Message-Id:Date;
	bh=TDTAxQ2G66ZRHFCmhbDYB8qQcdbz1GceaKD3+sJsZ+Y=;
	b=Ndcg2POVU4mdQrbpbgwTFMBqcnPQqJ+6WBqYKmJnWrz4p7eMayZhMG1jsToDUVoJ
	seRAPodn79ShDdKKKkqcVdfTWbyMxZ+04qYs27mf7UmzVjZdC17qygDtaxFzXgHr83U
	gh84AfXyXyAMI3MyIoOfdDiKxGBZ6ZdChFCiDdgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647961884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TDTAxQ2G66ZRHFCmhbDYB8qQcdbz1GceaKD3+sJsZ+Y=;
	b=bQZD01sIxtEB7ycwiaMukkpl9nM6rPiqyYBEpkJE9bIbQzF+CR8QmpfA++CjSVfy
	UZfkBagUc7Cs1jLjD4agkzCWxqs8t2GJmk44QDmHv37s/h9KOVdoUClhS0bpwNGvb8N
	0avCLLb5s4surbXEnJEzNcXTh3+CR/bI3rUc89YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb22ec842-ec2b7820-5138-4c7a-8ef5-dae2552a05e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01e4e3a26d503a7690f2a3fe1a47d9d85fae12c173b656493f6ffe00b0c5d397
Date: Tue, 22 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647961884
