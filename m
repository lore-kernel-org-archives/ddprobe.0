Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A517632
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651760158;
	h=To:Subject:From:Message-Id:Date;
	bh=R1JG1H3WW4VBP2WX2C56lGevpLBvPaVqMMC1Pp/MBks=;
	b=Grl2I6EaVK+/6NTfV37Z+vKgjsjli5109wA1QRHOu/DN4FPXr0zBieULVJHCF4a6
	D5UuYLC1KyPK1pELYSsfuS+SqDkUr99Tv6QW9HZ7ItBKMV0rEW+c79yxHxHDo0qK8Xy
	W6KEYYTHXKFKX3wviG9yyN0JLJBtsWBNtGBWRvQM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651760158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R1JG1H3WW4VBP2WX2C56lGevpLBvPaVqMMC1Pp/MBks=;
	b=clsMptOweSKRGFsbMB8ZXUu0SpAEtLhohFRp3BPc9htXD/m/IBhPRr/onB8IHQC2
	CVY8Ws2cMP/umsw8b5HuARAE+ep7Hzvu22usWZxk3IDS6ar1w4Xeb2XwxmSSlIfUwq0
	YzZIvCRQneZHnKjwn6m2ad94GDEsNhQ0+HnJA9PU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809493d638-538d8314-5b1e-4eea-9733-81531ecb7146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6cdaf57560781077e19ae94f00714380b41a412dab41ea265d0c16fdc36d633
Date: Thu, 5 May 2022 14:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651760158
