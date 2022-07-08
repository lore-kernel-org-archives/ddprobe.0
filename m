Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9B97A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657273012;
	h=To:Subject:From:Message-Id:Date;
	bh=WGlkHVgjCA489SYrlZKo9teYj+DesC5aEvJMqfD1FEc=;
	b=Mb2DL0R3mUwGGCpE8l5Zfgd+6eosmAQ6MdZIkaHdyaVuN4RBKZl9tv1uWr1yciZq
	eZVmZIi2a8vWfENaguuaQZxs6+g9lTUudTTq2WJ/JnlpXKpVs1gCVKJQw46IYjJAEMg
	MuqZW82iB3RM+AOPUg5tIcX2VseHSnCbzkW7fUv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657273012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WGlkHVgjCA489SYrlZKo9teYj+DesC5aEvJMqfD1FEc=;
	b=Xyv0YCRhxZgJdO4FWe0+2Oy9RiSVVn3k1wDNj54debwUhzTmBuSf5b7tdIPOobDO
	3W7SdwPHmHe3f0yBD859jBU4NhxMd7DyYJBdd7gLVrDQb8uVnrgoZ2CrL8rsg6av3Yc
	wF4f5+Y1bj2b7dngo597vfPpYTxG3gQUJtqd0pR0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd2b501d-2cc93175-a2bd-4768-9e1e-ad7f4c6b9d08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10e5f157ac19f5e3a0f06535fd146a910e4b20d64daf6b0fd92f3185619469fc
Date: Fri, 8 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657273012
