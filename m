Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0841363
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 21:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648849078;
	h=To:Subject:From:Message-Id:Date;
	bh=Yn7nsv5uqaREcMUtXcPbNn4xhEl9aTqyPBV5K8brAfk=;
	b=RGKDIOg4aL/nDKEGIvO6sf4Kj6ryrVm7HniL/N8flrYDoqCguOxBPh+dCu5S9kRf
	4PvphiFGQ9KVO3aGmkNG1VMkIyasyoV4lSne/kJpKiTot0thYI1ZE4jutowqNOX16SC
	+6GSZ646PhmhdQlCXm3c50meuJFJP5nZX69LVrW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648849078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yn7nsv5uqaREcMUtXcPbNn4xhEl9aTqyPBV5K8brAfk=;
	b=dykEOcBhYBxXMd6NhNPlk9OV4Lo6rIenKIJNNesKEB4Jrk8HcsG+tezLnf2hE7XK
	rNV3agnjHWAQucqX5+ts/0kRYtxbVYU+s2dm4K4GJZwD3H8n3eeba3rxdHtoSgmTc2R
	JlAl1QSsT6NnkajSZNdG/8gwX56u5sZqdhJgspzk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe71047f4-fbfb0195-5e1a-46c3-9066-87ce2abcc3fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad687477b717f04a8d2b5e89afb7bb334c558bbcb99080fca683fd1660ae22a8
Date: Fri, 1 Apr 2022 21:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648849078
