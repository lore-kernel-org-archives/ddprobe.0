Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E12B71FCE
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 19:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652903339;
	h=To:Subject:From:Message-Id:Date;
	bh=ZmKjCcGaxyWP+x/8dYu8ps1AZynjS9euYkVjaknDE3k=;
	b=NQLO4+Xt5wOIk9fWKmuX/8N5XCRbol2PqnvyDi78vXAM9tAGZkljMdP5H7JHuFYX
	9S98SZSPGOD9EyuYIrXyhMOPx0EslJ6Ok0PBm0P3bNbd0Y4F3ENJXeSERqIgg33RAyA
	VEzJ8XcMXE58xQdKhBkl0ABi2XRBKNXjQvjlg4t4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652903339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZmKjCcGaxyWP+x/8dYu8ps1AZynjS9euYkVjaknDE3k=;
	b=YVlM6E3VD7Zp/6imGiB9Ev1bphgwHvqCDaRLLyo/OQYXpVNnnMVQ9rw8G88pYXq5
	J4rBSyslW19h2n9KJHsr4EamH8iHzefnYQHcjqhJ8lPUGF4jsu4UW68jI0r08wkAiU/
	D6Ksass0UNMAYlclrE2fTFnthBfrrt4RDpXoTQGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d8b76505-ff139089-61dd-4a36-bdd7-6b43140c57fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49e0ff2df61b6f2dc34b7b0b3a852e1899bb9413a7d7f162c164cfc4d88348c3
Date: Wed, 18 May 2022 19:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652903339
