Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A79315A8
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 02:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649124838;
	h=To:Subject:From:Message-Id:Date;
	bh=33vJlZIfkp6SyXWfAmVyq6WG3Uzw+781Mmqm57KOT2c=;
	b=WzF2N95fckYT1rY+Puy5+mAKkpDQn7cCaJ5QaAaSJBwEYuoKbwEngcRGDuVSRgdo
	MkI9hHBb5Om//35HieD+BeLldo7JZpKfzSh4avq4TL5VAU8zVFAHq4Pr5QwCkgNzYUb
	l9RNwNfpyz2OZKobGSEg90K6lnkkFL/i5YNeA9Lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649124838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=33vJlZIfkp6SyXWfAmVyq6WG3Uzw+781Mmqm57KOT2c=;
	b=IlbR2ZO1deu2g+15cJff8v5jxlTPH9d3FipO986sD9Iy0hLIUHWEbqn2QKO1SdVp
	EUvDlNYe10kRpn+qFY3EIuDGRw/OYBQFEpRtON4IjBQkoCoz6VbxXpz3pT+QBDktcLx
	dX8BtaM2HdxkjXUr6AZ1MvRTVYWARyLgWl+gaPT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7800b82-5649ff98-90b8-4fb6-aa0f-8c4a867a31f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f36cfcabdc4c407c14c5e67cbcbbd766891dc4e7452e2f88d311674c8c1ee01
Date: Tue, 5 Apr 2022 02:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649124838
