Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387FB33CE
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 22:16:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653171359;
	h=To:Subject:From:Message-Id:Date;
	bh=OhtmbNQSXWRO1E7rf7z/mDBWn9ooTwrrSZLyinKTqxc=;
	b=S8g7BHcRi6AGajuupnKUd9h0MqMMLve64oQlk/NLjz9qEjlVQBavJlYXSv5ys8qf
	z+MuqGag1vzz/m6EGwiouktg5FrSIV7r1BuDuMTKOCENIbnykYPv0jbRWFU4/p+RFGL
	Bmfz2llawOn9mHQmpNF3APLeM5VHgpY3sTPoRfqY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653171359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OhtmbNQSXWRO1E7rf7z/mDBWn9ooTwrrSZLyinKTqxc=;
	b=XZrQM64KxDMTKiFTu0cAVk39kHXsieK+XbkTnkvU7gJb+utAK6JwB1PYECRbPQyp
	HnUJyM4suVGUDIIKZIwXi/QraZgF9kytn4EnCiCiTDkNeUjsQyBujpu/n+L3qom0rmo
	fSSiUe8viBQqOeUFAl8FAPBO9+PKMTeHGTfnO41I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8b10e2d-171b996e-2a1e-498b-b385-91c723522afa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c9a69699d67a517a6d7b32667fa7cebcb4da9679e3be052dc4c77d7d041aa4e
Date: Sat, 21 May 2022 22:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653171359
