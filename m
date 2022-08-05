Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0883232
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659739852;
	h=To:Subject:From:Message-Id:Date;
	bh=SAEyw9RmQxDsXUfM0wV7ZBWafnw2GDSXDkXymgvZMbI=;
	b=bnRpA15+bUy4mrlz5OdDeORFlUDqYZwxOpJmeAsE0wSAJECtyC2cq2v21wxK7tof
	Z9rDpYeY1lZ9OiRip440VkXmT9K+LqtClc6XbQGWsPHwZPLltw6yj+LE0jPiS8E/jg0
	qEz2VNerrHMyLwElCc3YxmsAZ3HVuyVSx+BNZDZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659739852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAEyw9RmQxDsXUfM0wV7ZBWafnw2GDSXDkXymgvZMbI=;
	b=eWX7pYaMlfjVAbkGLN4DcHRgrUiQ6PfRSXGpsvgKl6VUjwH841E3wuE0ucg0Mup5
	1s7vu9NBIccTu6UnhURUAK7JHxAI0ihIb4j5/aaLNFLbQsGHDkVHHqGQgMjEiCCQ8DK
	PB2K64Y+RdIC5RawEQcBJbDB1qhwohmAESVunLXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270344f45-5fcae9d5-d0bc-4442-8062-056c1feeedd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afc5b5568d34950609c97e7a62f4ac917fc29a77c1bc5f055b59b6770588aac8
Date: Fri, 5 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659739852
