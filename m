Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2462F2569
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 18:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653416459;
	h=To:Subject:From:Message-Id:Date;
	bh=Ow2jVg1dI3YZpPq/ZSjjGrNrsfEKMncO+MmSCEKusrk=;
	b=XSKEAc1BjDr/B1gVAJU7MVsLrSorg0emdOoe2tBMx9hIoNi7Hs26972uWwzp57om
	LPN0lPxl6RUE4uExoIKNKC6R6/AYeZ3IxYROO60gGXU7m+o7JvARwJ5+EOey81gM1sP
	Z6tijvLcF8FFDEiaNY6zryqUwKIzAoDqYo+e5t3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653416459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ow2jVg1dI3YZpPq/ZSjjGrNrsfEKMncO+MmSCEKusrk=;
	b=P/0z0ioM9gt5oux65KtBGgKk5+51G9Xr+3vPqscx3kPpgZAlEEt0jdFyVQ93c1oG
	pp9/VW09ByQJQAxZaFWpLF2ijaBzeSZ/RQkPaZ6mvSY2SRLi7EfVhiVfAsI0snwC7E8
	KLlV05GnMSnB264TtIS/Vfuclkb0Mn6lsypRZmMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f74cfc89-a5ecd226-b041-4659-8fa3-edf293de36a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50fa5e58bdac802f82de3ce5dd1c045fdaaa80e3cbdaaf1a4a9a610467b1aa74
Date: Tue, 24 May 2022 18:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653416459
