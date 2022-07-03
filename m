Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BCA2CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 20:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656881812;
	h=To:Subject:From:Message-Id:Date;
	bh=DyCUY88FTC5JGNgoD/Jeg9/o2nbkjDDIsBrWUkrjOX4=;
	b=I6VYdh5pkKr1njBpyK6hUQLhY+GDR5wfYb0okggrMVvjq84BvqogmBweNkJikvKq
	0kT2rrkTjj/Llgx8XkL6kgkm7w00vwPZZmZKlSOfuJ0iOghsnIfE01N0+UfqyuOwH/1
	/xYUKyyoRJdgi5837NICJF1el+lW41FwPgejUQ6I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656881812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DyCUY88FTC5JGNgoD/Jeg9/o2nbkjDDIsBrWUkrjOX4=;
	b=X5bmtaY/MCY6mI9V/xaErPCMnnPuCYkbZenC4KABy4wfLp5rAacW8aH03W8cfjgH
	TaKC1VK7mEFFvIpKQXQUH74qlSUip6wv93JvXS/KvoBHIyc0KDcaFfz0L2uTa8PYNJ7
	BO/8DUsFRMFMLHvdKpvmZvsLpfQxS+5F90aGsQPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5da136b-16cb0320-0c4d-4dbe-b3c6-d622a845893e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c6aac3139bafe9d71be0148487af743ad0d1aa95e574dbcf279f800039f70e1
Date: Sun, 3 Jul 2022 20:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656881812
