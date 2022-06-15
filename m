Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD73A7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655318759;
	h=To:Subject:From:Message-Id:Date;
	bh=U92j3zQJ81mUr+/i88sr5v0LMCs1N4Di4mVaCFvAiLs=;
	b=EcinUYZzgi3U8V1VY2rixhAWACZWHlmlU3fPACeJCe7DUY2MgT8QNDyLXqUTx17h
	xV0HwMPvpl1doJ7KBmJfAeO2sAzzmLea+lp201TEwZkXx6HS7B453a00lJJm7Iuh71K
	Dyq4lQVLC3mdWIH13oQmxPy0H7A1ZMgkadoBa9Mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655318759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U92j3zQJ81mUr+/i88sr5v0LMCs1N4Di4mVaCFvAiLs=;
	b=C4SH5FqxVF/Ia+xLj4CWZA8GuRdDtTh3xd3wEF4oQa/pteZLua2d954MM7gwKcOc
	PMbfvjhN4lYL3QTCWMTyENcbSRxyRQ5DyLg9wdNaYzwcZpWrBYjAKJQTYpqU6UxEsW5
	Aq2sQ/9ijF7ub4ZAOjDqNES4Q+THQVTir8ayRwt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168afc751-eb6f4d91-b34d-4a51-902c-3d411937a10c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 713857626b61cd6598959772f9d9ddd1358a25f2c473e477b1ecfa4a0d8822a3
Date: Wed, 15 Jun 2022 18:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655318759
