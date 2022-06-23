Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F6D1876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 10:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655979479;
	h=To:Subject:From:Message-Id:Date;
	bh=DvRXFJwuMtqbzZD5o/ZrVCGad3HceHEEVWQO0DDmWM0=;
	b=VO8W6+dWbUfw9n+kBdYJQGn4bjfBId51uA8dN0Yt77ZwDd0MANGIz0qOLqQDwC+6
	V/++qcQnPxttMd6xTo1TcaRbhSX4ZqiQ+VenDoxOhIRsoow+02KjHUK5HEns1xmDPrt
	DsXAncaXY1Uo1VUIihDTCzpGUXA6W40Z2xyOPC78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655979479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DvRXFJwuMtqbzZD5o/ZrVCGad3HceHEEVWQO0DDmWM0=;
	b=eUXnfJ8btd7UY5YYp+2P5a0GjK9MsbwCCQaUD0SRdiGUmx56Khe0If3Ws2WwtidY
	byTU1X3yJC4uwjPlmfxk9sGFgHiw6Vn9KPocGFXyQKuJWp0gNm980QFWZK5f7hCg0xp
	uiajeU9nU9xOaxGtbj3IBWOsSLafz62ErRrH4WpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181901190d6-437d3fe3-3397-49ff-99a8-34d06f6bf5d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d5cb32d09c2a559ee8bfbf897285214bcd18f2811b6eba67d6c8294019eccb0
Date: Thu, 23 Jun 2022 10:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655979479
