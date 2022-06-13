Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5FC7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 21:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655154719;
	h=To:Subject:From:Message-Id:Date;
	bh=UoWYtTgi+6Z43hCs4HHyY2i1Re8GM7qu6tKF83Ij6JI=;
	b=jjDbnl8wpkOMRZikOFlkVWoB3qOrLGfu27bI0Ha5yuiLQwvCZ0x//xgU0QzKIJ+u
	8i716LPPuzlWV/wDFOl9AXmAO8knlUgr40Y1z3IEtbq/ObP+/WV3ORxlwaFaMOTxj6R
	a7k+o9PzYG8IQnO9/86Bwb2rr9/qipB9kTC+jYTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655154719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UoWYtTgi+6Z43hCs4HHyY2i1Re8GM7qu6tKF83Ij6JI=;
	b=FqbJmSDLMKSZx0wI6VZJ2gvY8NfD0AcA83saLq51frQpfkqwz5OSUwJMQZa4YXDe
	vDok/L89Nb1xfAg6kA7nXuS/fpONw9oFxczQcLqVXq0UUjZCxLt8XxjV1C7D5iAc7ss
	lax5mM5Cm1UTvTZCy3hp61/uuZC6K8BOPH4WsV2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815ee8ba22-91f9e7f2-be78-42e3-bffc-efcf9a4588f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d57828fd34f5487df0d4262ff432d0343eaf0a851f6262f17d3c4901998093e3
Date: Mon, 13 Jun 2022 21:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655154719
