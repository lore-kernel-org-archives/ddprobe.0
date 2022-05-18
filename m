Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FAD1FAB
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652888099;
	h=To:Subject:From:Message-Id:Date;
	bh=m9bTtzvNz7nGeuZbbex/ivMGLLF4M8msM2SEXojY3+0=;
	b=hEEvZ9+YYBELE1X+8VGvZuk3/GtidkWuu6exmg0bYQ5nAVFtI0gvVoAqEkTiBRj8
	2va+SzHfhY+spG8o7Rip/Mne3tBHc+qs0sLGg/dK7x7ht+1+a+nmrJuzaU55PiokC9o
	4oD4v1mjXMLTUuoNstDNi4c/Ghp1AVGinK/e1nOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652888099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m9bTtzvNz7nGeuZbbex/ivMGLLF4M8msM2SEXojY3+0=;
	b=VmAqpjw3qmPoMzUeWk1s2qt40NXREPGZP5BaNr2/CASUzhO/BBC9fa5uG/Tnoyy3
	A7bGUERXI7a4/jjqWF9lfvxp6qBYHBs+bfuL+HtZj6Qi9V//hVQDwllWUfsluV07DQd
	iydbbQTMNqigytJJzfvHEeB8L0973RaullW5nQAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d7ced9ba-35828e85-37c5-49af-a456-4e728073fd1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 65874be355505421c5b76a2d33b47754fd1cbe0265b986126b1d1183e6f60626
Date: Wed, 18 May 2022 15:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652888099
