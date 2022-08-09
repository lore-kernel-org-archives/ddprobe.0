Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7693E15A6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660010452;
	h=To:Subject:From:Message-Id:Date;
	bh=V0G1eoi61w9Q2SnSMCatQegtxDlpe3fUKZFP5EjcVEw=;
	b=BPc6HCgiVxXkg1kOdTMatHexSPeq7PZP+1hgjF4ZMjLS2I0teF3PCFE2q2DlAqeC
	zf9eF7lL9/ofxSehTHggxXIzsA5Nfkb+VuLUrLnaTeFLzJbvvIwqfQc1r2RjDkmv4dH
	NkKhYnHdPlDBjwUS8qRr3pcrQGXAKG/kS28NwKOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660010452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0G1eoi61w9Q2SnSMCatQegtxDlpe3fUKZFP5EjcVEw=;
	b=fK/g3fRXPdcBA/VP4joHtdR+5E21YA9dci9zmiR2Hge/dXuY/rg1/6sYol2ZZm4O
	6v4K0FtuDoZTaSd+mIkS4NlWapwS5n11STLdBgrWMsFDjXVsWSpk8TbMeSPrssst+NR
	JizwPSlHS9b8wEuebn4B3yU238AvvtGzShdx0B6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280555638-479c7c89-1467-47d0-9dd1-93fc6b571d35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd0c03beee599ab088f7060bf4b8b0e7141568e833d2a44d04b5170f421c5c8d
Date: Tue, 9 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660010452
