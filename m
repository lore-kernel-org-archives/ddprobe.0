Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010A87A
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 03:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653967619;
	h=To:Subject:From:Message-Id:Date;
	bh=ats8GMH4as/qlcEUYz9yp0Kk8FYSmZrVbbqGLnpdLL8=;
	b=WHqx9ibgf0MRCHSbCCUA2xTgbFciAnnBn+m/cfNbx2zaf+zAnAA19G5DM7vEJzGr
	IDSvKpO+fKEr7nteNIn8C2pFr7y21hyaEMyp+PwZZr+VSp54jqsEmdWWB2UloyKXchY
	6/G++IyYZIVjBLF+A77pGTA8rr93ZSedfsGfxy+M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653967619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ats8GMH4as/qlcEUYz9yp0Kk8FYSmZrVbbqGLnpdLL8=;
	b=bGJG7/OkMqur+5yVqJXetpYdktvG1pI8Q0OSu2hOzsaLzHQCUkSt+nezGHzavFL0
	Q4if/vyrfTnC/7Uxik9kcAKxS6MBvxUvxL1ri28XdHXptNr5GS2srHvFSvl0YsbYgDa
	Kw8Hk+YIGKoon7OnlEcc6DPEuw2xtR+WKEZfbd2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118270529-e0be2111-2572-46d2-8cda-c3d63620884d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b1b8f8f1df26d684b634bc8eb879f153271f72615052236cc16c9acec6f90f6
Date: Tue, 31 May 2022 03:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653967619
