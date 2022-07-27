Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8860EA3F
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658900452;
	h=To:Subject:From:Message-Id:Date;
	bh=ZpDhbxU6rr1ksqTPj/zEC/zbM3UWUVqdw8CJoUYAcVY=;
	b=XGWG9RDOiMCVTAxBwZUpi9y0o3XmgqW2i2I4dPjRkInou0q8zVQobTS23Rl0P/Bd
	Grt7Am5VSr/shXI9hraMIvUyXXEPP9n771S/G9OaDntzFtbWb26IpK1YFhsqREBAkbe
	nAn7CH42Uca3HVwf1U+kFt4l+N6nNokHfKNrBAhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658900452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZpDhbxU6rr1ksqTPj/zEC/zbM3UWUVqdw8CJoUYAcVY=;
	b=BTUDVG+mAOOM+jWI3RcurhlIBjmnKiQGi4H77E54jTe7r+NJeqCVYsY10D8v9S9w
	J60w9GgoSQDp00yidcw70IEx3ByGzado7zLxJsJWrYBaVcsK2Ruhf06MTnVh62JUngX
	Y2ubNYMv+rjH3alImzB1pseQImL8Xqwkoqj24orE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823e2c14ff-aa209372-d30f-489b-8894-734e1f73bece-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2aaad1751c1d9c5e9e43f32b298f977d47f645079e38568cbed27ac45a17c72
Date: Wed, 27 Jul 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658900452
