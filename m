Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D7B1376
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 13:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655125619;
	h=To:Subject:From:Message-Id:Date;
	bh=MmIkOE4X+kBrE2Kwp9/JgJvVVvIpr9B6cJLJ7NdBxJI=;
	b=XKDDSXXEthHsfqq8oiO1QBhTBdSZ2/RjiH5gs45XzTT+gbmHS/hPWRQ4HFsNUZCp
	WjU5/LUqh7SIzCU9BvNRKZm4iiVLIJ9Nk242L+yMhv70rF6y8FN2k5eHIdVaul/qbxa
	OJJUQ5hhUjOBI4FiCrpFq2WIYu6I6wilvdZTKw9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655125619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MmIkOE4X+kBrE2Kwp9/JgJvVVvIpr9B6cJLJ7NdBxJI=;
	b=b0aKT+zQU8ULWCAgHIoum30XtJJ59GGsEweHD8Gn49M+mVqQyIozLDfTqQjZ3cR5
	F9CLT7hXaMh5HK5fUpkdIMrv/cz7ezoIDw+qY2RsiRH5lFs1YpeUZ/wJYy2Gd5zBFZo
	F0/80GLeL4vcNvdIkYiRh7xkV12iN93U+a+Ea3/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815d2cb22e-f55509e4-b646-483d-b25a-78b4bc60672a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0185e0c668d2b4954aaea1ffeea856db0a60a5bf3c69024835fab43cfd68d269
Date: Mon, 13 Jun 2022 13:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655125619
