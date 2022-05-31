Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039E4210B
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653991439;
	h=To:Subject:From:Message-Id:Date;
	bh=DdEaNyh4YD4LH9kByoxhDarZoQ7Z69k4GYGAtXNVy7A=;
	b=E5+rYX8xo23kiChOlqku7Wqf5HVLJsGvqmL7ai6tlzcMS3+a2aAo3C3GrHgwzFoC
	1pzJPQkW6hOd3cAw8fkclZPlRIhCZ8gBMMS52gBNBMefJyEqzL2KJu5HWU4JgU4EqvA
	WY8awx5DOSjboP1CSZhyhuKbnuLAlCbD7RbN4p28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653991439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DdEaNyh4YD4LH9kByoxhDarZoQ7Z69k4GYGAtXNVy7A=;
	b=YdptLja1KTfHtFDKdY9MDLcusOh8nQ/Cm+a5kSvPtzqS6+2wrO4Ycn4FHVINNjo/
	nVnVVcQRHN/hyo3ZQliJ1Ua9Mk1M7EaGwTTBOFA+G7V4r9+YS+sLc2YZ9b9spK6RoTr
	xbyjzUtJ83LHiUxp0ldEgWnCCX9GOsDNEltxS0SU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119927bbd-e8541978-44a8-4fd4-8993-de35b6bec2d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bd296777d18d6dcf6c8dc0e55147828740237bf45ea3145a01afb43c05a9393
Date: Tue, 31 May 2022 10:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653991439
