Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535127E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651027078;
	h=To:Subject:From:Message-Id:Date;
	bh=cHF6A41n1oA5Q8YuN0WNziNSTwArx7HZHgvc2xxBQ2E=;
	b=G1K5TvddfJXf0N34mCxg+hAthB5qs+7PROrJubUUT9m0LzXesj7ngtLuv6PZAo+j
	HHv+It4nHrL7MoQFgdpU4X7QpBEMH1/PJ4XeRgvZIWMv63Tq+DZSAvBkXGbjKRJMDLX
	Fmw0OaCLyWGGTtaxae/WsxgiGTvR3ye9vbtp2yTQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651027078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cHF6A41n1oA5Q8YuN0WNziNSTwArx7HZHgvc2xxBQ2E=;
	b=Cj9D8u5l3LG/Uys0VngZZBG7XDKTftFJKGolhyQOnXGU0XdaIsLqF+oqG1E2qjKc
	RN4yfkAxcbSn/gaRlve31lOcZ9DQtw8jGo2/bpGjACOUyn3EFJJW1uS8Q6/xvKZOpZw
	5uWixqWE0aZ26n5632eqEDC8Gfw/n0FXO1rSRl6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068e1ed00-e676a005-586e-4790-9d1d-c3670454f967-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adb44dd8c03192281a21368985832c079cc156016cc07e15f439a78e3b46925f
Date: Wed, 27 Apr 2022 02:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651027078
