Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6284E580C
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656728812;
	h=To:Subject:From:Message-Id:Date;
	bh=qV0n1Ul88kBDzit9m2r+82xn4isN2BR1v+28tpLca58=;
	b=fwgE+1c8z/zA8iuGbw+mYqZx0A3KK6B2ypRsg6Nmg4rHmr+rTci1LbiGwBGid/1S
	dEPNF6FoAORbGB6iJ+ZUMKmJwIWFPdU2+l5RBHna9vxmfuwFIMv6PzfmtzcJ7XiwPxM
	p2c19WPp2t+/UBdK/zKjCeCwrUkV8NJOb3v2g8ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656728812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qV0n1Ul88kBDzit9m2r+82xn4isN2BR1v+28tpLca58=;
	b=EP7n6ZQxsNSczqooBewvpEs9q+801B/fONlBekFB1gThrJEwfjkOIBnTm3O2MPWA
	ydC0dTiirSCk0VK76rMZKs4U/CnwEocXHjvaFjQoW+evBl+jYGGr32vlA39TwJSqzPg
	SUk/Bm/iy+SJKIM+vB9DqN2tS9Q+XNUTEkxJr+TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bcbb7b6b-918afef1-3812-4b65-a048-c7d7eb9f5611-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d392993935543f386e3c4fd6c060fbc574143095fbe6a1048ce198db0afac9a3
Date: Sat, 2 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656728812
