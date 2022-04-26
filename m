Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADA12560
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 16:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650989338;
	h=To:Subject:From:Message-Id:Date;
	bh=kPRmdMbHGA5cP8NoX0ytLAi8UZ6cFzb5qEpmnr+wjK4=;
	b=A5pEnVucQYblQKdsVqDeXDqS79jvUWsWEBWgfKq9JQbONQXUxwDiTtj+sdzWu8X5
	H73XuHZ8+6zENd0rLDti0g+qvqfGGTcqm79pVHeqRADJ9D50ocM4Krn9e5T2Nkj7wF/
	Ww6kiln8q3n2KlFAFGkJhGfKHuAdYYZlqZACCVMw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650989338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kPRmdMbHGA5cP8NoX0ytLAi8UZ6cFzb5qEpmnr+wjK4=;
	b=Zqu1JBnoZPiMS+KWjAqo69OtNdgT6pY9SF6EmV7vO9pYfx1hnDezqhzGT5YAbtVB
	Sgl58KCdvCT8tnmlr0ibzqXs7BJ8P8DN6NvL05bCf0Ixheo1+xl4+DwEu3kM3s3tJMW
	ndTAypr+3HVhZ7St1efbfB+cl3UVMXvTGvY3eF0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066a20eea-7d846784-a392-4958-b95f-c36874b21ea9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbb22bead484464464880e7ce6e47a9c9168541c9b995ba7c9bb4b747f2edc45
Date: Tue, 26 Apr 2022 16:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650989338
