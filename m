Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CBB7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661350252;
	h=To:Subject:From:Message-Id:Date;
	bh=Y09JjFJ8uUI8HXQMXJbhik65pSzFi+lGCX6c3w7vA3Q=;
	b=MpLEnqiE1uAIjti5aB4ZNiaZTlYkoIRo2NbiT90HRC8vX1qzDoTjy1l5cdJ30odj
	S+FOyKbyI211yfntWob5ic4/djPDp7hvsB3bJtvrFNic2cH5HYZlugVlZNQ2q3jGrbM
	Y/KKBLMZOzqaeynPgWun5v9vup3mLxT6STj0uFPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661350252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y09JjFJ8uUI8HXQMXJbhik65pSzFi+lGCX6c3w7vA3Q=;
	b=IeGR67rYPnbkndj5i46b77YLyQhTmQUQAGfwZBOuhhWUTc+6OqvZU5GlcTaJQnH5
	GgyhD0C5bhrLspkxDmhvrH/e5jJ7HxVpQtbfQZmHZ015qKcj5fWliUmVKgOGlgw5+Ao
	I8+QGQSThlNJvdPyix9XN6JZvRh9/QZ5d40j1EBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d0311046-2180402e-6373-4977-a8e8-a155b84d2e54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cfbe9bcc15553e7ecb2b624710cca6e09a62eea6977f87d709ce53dae75dcb8
Date: Wed, 24 Aug 2022 14:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661350252
