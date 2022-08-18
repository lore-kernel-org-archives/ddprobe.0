Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A00F23CD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660809652;
	h=To:Subject:From:Message-Id:Date;
	bh=zC3VsDCIPxj3EJpC4/2vE2HHtE/g6sk3QOCav3VX3ME=;
	b=g/oepHgggBCGgsLE2XUFwSt6MnIMrbjKBA0faQBcZavufd1zV4AuN5QZiVtS6LOR
	+BZQGl0QlPhUWJBkUJMm05pBAPw9BOCe9mqmVE1VAfCGicR75Lbukv1gW1qiNmn5D+c
	MJlWQ/OGm4FnQh4GG2cTXzYpQj9XlQro0q5hpj1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660809652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zC3VsDCIPxj3EJpC4/2vE2HHtE/g6sk3QOCav3VX3ME=;
	b=UgbsEuOc0NeGe5X00d6xrtJ05nFgVIseQGxFExkLM7pmAI05yiy54LjJYmarnklR
	yrlf0I6ZVzegBKnsINnf7ERMJ9SgMNouVHB60LmWLLaEGpOpf0RHgGm9sMhE4GLTWem
	EcYuL8MFElI35JoUCXF3nWFbajUBHt7qkIrJDAH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aff8290b-e38f9e5c-e234-4a97-9f26-1bf993dfa2ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50e58cb4e451fb00c1b408165cfd33a79e6d5f3839ca33e0a24e99a5e59dd5ed
Date: Thu, 18 Aug 2022 08:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660809652
