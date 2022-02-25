Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C891B60
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645821084;
	h=To:Subject:From:Message-Id:Date;
	bh=TRzOM4RzNHOtZ99d+9jsphz8/UZOA6Eg9YZDTDqCHyE=;
	b=DeWDz7e1pbIPbLDlF1HAus70OfOUWooPIlUWqHSXb7lvee7sDeXiVr0eZEdPyJqG
	VEvapm9/h8jt+ENm3KrSMFXOI4sjKa0TaCtRKRn+bQOe3X3YwjHDQM4OnvK1VW5M0Xr
	/3hEgtVr8MB3tf250MKD97RJYDe3g3ntWWAnvbaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645821084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TRzOM4RzNHOtZ99d+9jsphz8/UZOA6Eg9YZDTDqCHyE=;
	b=Vvqvv5z+3OQJa9r34gf6dLHv1o3LEH93Gu6nV1Q1gaxyx1H1SybYBpfyrNZsAH4M
	Buy5QyqhwUgzl6d6KDapJB7jcthnMRJhVP59Z42uwFV69WdF4VekOT290rGkyOUOI1e
	F1H4Km9HdQiDIXQSVaS1iijfVMCf2Li4fubcdkSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3294c48f-d050f5e8-1627-490d-bd28-43f2ae15f776-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 822c8da68877a3e7dffa416786462d224189a99a4bfdec83d91db60ba3c1887f
Date: Fri, 25 Feb 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645821084
