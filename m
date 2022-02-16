Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A035C187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645038385;
	h=To:Subject:From:Message-Id:Date;
	bh=O9TY1Q4XbEB36x+dyp2sNmACuYYhdQ8s3vogpVcjyXU=;
	b=CR4JKjKJpII0t0D+/dFSoP8f2EiEMYeeE7ZE6Fr0zVdfPuAKN0CM/KI9ROBym8Dt
	PsqB7jJMaAxAkXwP12jkFkvwRxBRV9pbYzwUAAXHv8rzsnmTn5N17gnPQdCKTXwyCUF
	S9kiBToohWfD++3uRUYmKKqoqY4Fp5P+CPwATnxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645038385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O9TY1Q4XbEB36x+dyp2sNmACuYYhdQ8s3vogpVcjyXU=;
	b=RVB2ImW9iT/QsMUB+UlTz+VlODVQFAswswjz7mqgQVUkBibnu5d1TfvppZzKZyre
	SnQP89rJ749gSormlMs4s5t8P3csNx/i/kF/TfgcSnO83D0Lhkp1BfAm2RJuryARU8r
	AxJvUghWK2sQAqRuT7/YQGMWFLEZegZ/IOo8UGGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f03edb680-ef8aab41-5201-4cca-8af9-4dbfb1a5d515-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5981db485d8e7855697826d05e3099ef562cbca49150f76807042b62f529cde6
Date: Wed, 16 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645038384
