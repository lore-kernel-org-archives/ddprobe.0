Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ADB5387
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659644452;
	h=To:Subject:From:Message-Id:Date;
	bh=JMZAJ8JGavVklsggh/YQhJPeoWBc7KxCNmPXs6J7QI8=;
	b=Zakxl5FMXGeTr5u+gGuQTj1mJfnk6VL40lBtt3zyUmDjTDm7jANfgnGgYDTzLZ5y
	Jh2YyW7J9vdEKh1ibR+Zp/6lY8Cut/AkANvNbat587tNsWy8nJ050OJ5kpp4/o0fLVL
	QNlawBT8uYWvVo6Z9uY2jQ6Sx14+j8+EpFeI4+FI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659644452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JMZAJ8JGavVklsggh/YQhJPeoWBc7KxCNmPXs6J7QI8=;
	b=DCyR5FstbZnaR9b0AplUBItXcobHJIOdTU8z2gTUFUmsOjTg9Zgkf41h5+u1tOt6
	B2of8qk1ELT0SxbEhDFkGCp2O2t50RqYh3kiyvfIyKolbEVDpyYK96/EAoaq0ASohnx
	lkjDrX/V3i0WqCb5JCXllfY4bE98yW1hYq9DD6c0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826a849eaa-05a5dde8-6a14-41b3-abf2-7f8ba863a8b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf65643a5b471a93f965be6667893e03bd75efd8cc8645546cb89e50e72cb3d6
Date: Thu, 4 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659644452
