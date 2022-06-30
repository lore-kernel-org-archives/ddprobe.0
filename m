Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FDEA7462
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656620812;
	h=To:Subject:From:Message-Id:Date;
	bh=mEyG4z0/2RpYeMXQWNtWNTWa8ntoJHOjho+okGTF+zM=;
	b=H9xCNSKfA+iIu6jpabn61sRl3HXuC/9DlHs3PAxgkrYPmK1ks1jA6ClPdH/mPSXX
	LZNf0jUu5JGabzr1GLu/j/eqpwXFOmd3r+Vuk47KxgjdqgKBgp8fAwRVYo9GPZ0I8MN
	rz3IYSGrPsA+GxQz8hbDIlZ7TDfB3YB89d505NcI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656620812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mEyG4z0/2RpYeMXQWNtWNTWa8ntoJHOjho+okGTF+zM=;
	b=SotpX2P9RtAMM5y+C3rCbz/YOyRL6ZrFRxEBRZ6wQL/DCYFZp9tS+T+wbMqIjZKV
	D2ikZfS2hbtzi+MsMX5xXp1mA+1HuCgnlMNGgLnrfRal74P5PXvPqE9TGvzWTArC1Tj
	Gadrj4pjcwTOSZRy8t+bqR6vvc9JOrHvrInc/moU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b64b8810-aafbd616-6fe3-414f-8e0f-544ebf6aa516-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3b2e3309a71fd91d1b25e112317e663a12f0e55b41c2757565e945a431901a7
Date: Thu, 30 Jun 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656620812
