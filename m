Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640ED622
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660354852;
	h=To:Subject:From:Message-Id:Date;
	bh=P1Mt8B2Z81lbUjyyhFY/xOmLSYgylDzFxqJRKDs56M8=;
	b=IQwOCVjp0PMEz77ehfuoQtVZ0NaIrdQy+dJDfHlt2M/SU9V9V9yCMqOP0ac5bf/t
	CSE01/+j07OsijvycEFO7pDVt9hQwcgCIKcXIa6RqzY1KRZaUx4RRsXjtmO8O93uwoF
	PMot6nIimteB3qrsTQQMPnBAdlYGbkpU0i0p0ovQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660354852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P1Mt8B2Z81lbUjyyhFY/xOmLSYgylDzFxqJRKDs56M8=;
	b=ZwaYV2WsWJGfGkemw2Zi166cRrF6u8Q4luaoeWCcmpgOZDYynWnUmedt+2HaN31F
	VhtAhwsreuB6Aa+BZQ2NZ5kc66QEbqh0Yy3WljwEz+MRbXCZLgOeXKiKxZpdhjPaIPE
	S5CAPvtg3RNw+Tnp68ReNPepmXU/jucVjMwJdoXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018294dc76d0-0e52a0dd-df4c-4383-a154-4452ca5b89d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b6239c7410f7e2cf66898f18fa6270eff55e7828db00acd396c6acf5c6d7053
Date: Sat, 13 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660354852
