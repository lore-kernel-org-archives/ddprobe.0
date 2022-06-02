Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABFC628
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 02:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654135679;
	h=To:Subject:From:Message-Id:Date;
	bh=vyTfvE+tlj/88lIvwFm9oFUK5p6jAT1VvKY5qUjBZR0=;
	b=CYu1qN5wYETpNpf2tFJWAllOtm3icO6cewqELgAGI1tSjm5KZuiAJDsgnLQdS1Di
	MaNUsJYJlzPlxa+S6yQX6/OqxPEQg+u1Nudd4jKdvZ/9Kzzc2VUSatTidlCkl/pgQgj
	Ze/5xu6Ri/eWg9pzY1X5r0a+ljIDs3q3iqorbGIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654135679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vyTfvE+tlj/88lIvwFm9oFUK5p6jAT1VvKY5qUjBZR0=;
	b=NMULgfmDfruoVzgUvV97sz+485y0Nzx4J5KCZloRCbR+LshzNknwT3EDgjtY/e3h
	vDQ/x0Ho0z8iSjmNBiuQCtNxl2p+mdSsEc32MWBPIjF9GuXLz1J2Im/senWetHIVJOq
	S5G2tqNjyZYv9fKdN7ohXW/etZhEgDJqY2Oi3JKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181222b6920-c4b11c19-63a4-424e-8341-3ef4d457092f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb88761c05f4d3e6ecb9e9d9d49f0d33b552d584d4d13684c69da4ad49f87655
Date: Thu, 2 Jun 2022 02:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654135679
