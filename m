Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534FA7B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661244052;
	h=To:Subject:From:Message-Id:Date;
	bh=SvOFKoYdvheWc9+XhTGoCS1YB3H2JzNHvBMbG2yljw0=;
	b=Zg1+cgqQABN5YVVifkQF15JRkTb6IcfO9aTPW7e4QWt0jgkxTv9e8ZZJKcMPpHYH
	NTla5LEGftCK2KZxJv07kPPkMQNp/FFhBVD+sB22ZVm+oxlAUZvsSJmlyxH8VAyD37Q
	9GE/z20pkG0bxhmPkd0uhfqD6k4xB8zmpoI6E8WU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661244052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SvOFKoYdvheWc9+XhTGoCS1YB3H2JzNHvBMbG2yljw0=;
	b=K3feRBpyZuPPTwumAvbMJ6RbWDbZrBjl0Cffco0/vrNyebM51obtxpH0VfNqin2L
	gt9UQl4hYS3bMLyGNVUbp4SyG+5fkxfpIoUEdPeA8zEz5EVVibfK6pt5eYEfYcEHjb4
	8KeR2Kec3ckaRN15abP0qWpQpY7uQCcVhtKn/PdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9dc94a1-e40fa8c7-9b70-44df-9ba2-caffc5eff1da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dc353c96c314add462e2c5bb4abc8bc2cd5835f7028c408fc2afe2f1dc0a7fa
Date: Tue, 23 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661244052
