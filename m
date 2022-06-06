Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0134033CB
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654549499;
	h=To:Subject:From:Message-Id:Date;
	bh=oFRLevVrVJztrTShlxl9cckDwKheFr5KZIwQ17oMjDE=;
	b=fNzUxysre1prlNZSMwyf5i6E3CPdDvHKz2T9ZKO1PWPjVKfwcfxb81BrkBZYHRdG
	Sc6PicNjnjhYjZahLA2yVTL459kqN3ZmohrYw3EMh2qf5Fz+GC6RI3/ulI9osnfmGX1
	iFSfNJ3WcfgYG6IHVU4YlRfMUOzSe3BK3JPJHKVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654549499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFRLevVrVJztrTShlxl9cckDwKheFr5KZIwQ17oMjDE=;
	b=jrpjoQPopNFtBTKIi65FH0tq8ywSEWMTuQ9oIe3/XtKlAjYinUD1Rj8kc5lMy70H
	knNUYf5uqSTFIMFiRbpXthpkVED1QOzgTWghH67SNSVWwApTUfmz5LXyv78Pj7IIOzf
	FvRjv2uG9ITTMsyunk0rsowRE4DPqopoyvu6NZQM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813ad5cdd5-310c70c6-c2fe-4df7-933c-30804240f6bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 389e055324c2aeebcc3402613f5d1a08b966bb4397039d4f76e233d7a574a7a9
Date: Mon, 6 Jun 2022 21:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654549499
