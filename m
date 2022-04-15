Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BECC17E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650006718;
	h=To:Subject:From:Message-Id:Date;
	bh=/akxK3UMR7h04TIY4Oki6jwH9WY9KvqQY6pAdlqst/s=;
	b=fwgOxI6Ny5wHG5cttr1xzsCZtIqvXlMVVUXSTsAlGFPRW+ssQQ8J4BNkBrwyakGM
	TvCU7r1Z9nb690xRemYeGPl9LTbbyv9h0MbJ+mk2e/2AWSHdvBV14ff6KMGANptydOq
	8VvJYvpi4JddUVeej8KJWq4LGESeulMECIgkzLg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650006718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/akxK3UMR7h04TIY4Oki6jwH9WY9KvqQY6pAdlqst/s=;
	b=X43KFhJQdC7nfVujPg4ZOoG9HZ2ZHTJzlHJZBi2GfrIhJXjqW5tcKWP4KKEljfZH
	Hx9FKe9E2rfFa3Vp4AXmHhvl/pDdXARQPYH9knscQPxmmp2bOhljjYFI/zMO9Y5Emu7
	d2aLcN74rnlNyks1nZjpFhXWcVn2G1bD65C+4i/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c10772f-ffa52a99-1b81-4b0e-bdb9-1a5012471fdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cdc5a974e305b92f2e313de5e44decf1f70f69aff67c91881eda1c3e55b5f27
Date: Fri, 15 Apr 2022 07:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650006718
