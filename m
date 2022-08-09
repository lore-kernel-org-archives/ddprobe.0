Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAA523C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660033252;
	h=To:Subject:From:Message-Id:Date;
	bh=cVeitbU/8vsBi54tUQUH2t+bdD1PuRKFQXom/cvDsyc=;
	b=foM2quC2uQd0JHcIKzlGg/IZ8nJczJ13cVa8T0k8qH4G//GPTUSad53BhFQdj31Z
	r+IdsdPsFUYjq6aIjx14XK+0NiDjSDrUNVZYHNsTgHeUFNVeNLZsTf4kM/bfmdKKHKM
	vGRyN/FRlr9Vz/8qsCFXrKRZFXt72/3/3Bi6hUNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660033252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cVeitbU/8vsBi54tUQUH2t+bdD1PuRKFQXom/cvDsyc=;
	b=eQnIaZrSQUZTBPILR5HIk9ppC7Aan5wfRQIJbzMAE/H8uve7yHy5dNQTjLWNZgRi
	Lq6WozqIMpu7B0/gXGTO4iLfe4qw4UeZtuqb0JPb5kz0Q4AcBnU/Clx7ZZ7jvF1yggi
	riBzRJzD+VmdNSV50spk98ZNl6YPiPCsL8w/4KKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281b13cbd-ae79ebc9-7e8f-4966-9e45-e9ec1f1f1fc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b6b59ad9b62e766aa766b0b2b70fbe5e53fd9767082fcef0aa02abb4318c4cb
Date: Tue, 9 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660033252
