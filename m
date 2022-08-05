Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311DEEA2
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659694252;
	h=To:Subject:From:Message-Id:Date;
	bh=T4chJMz8zCYPLpDot2Ibx/C8XiZPdI1XlHeGMZB0kPE=;
	b=EPvFFbGLAuKF+MbO05ndwMyqNMwz3f3rh0dFsWTpd0AoSUTDlgkUbceAZ4h5b9Mv
	zpTTbzGPYHqRSqsN2p5+gWadvohcAxD3o6Lv/dnzq8mjRNBmep7xdzP+xpFEII+9deK
	JMjedLXYPKwKHWMzEdHPkWDVR13xrVq5gK/I/jUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659694252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T4chJMz8zCYPLpDot2Ibx/C8XiZPdI1XlHeGMZB0kPE=;
	b=YcV7S6TUNmddiPtPcHLvCrJSuZh6v+wu5L5rIPInhVbmmF+aNk19+sRa1z+UxEdz
	OCFpc8os1/jIr4E7lX+LYSZw/pZYiuEkv9TBecisdG7GaW75ak9RFdmC9wAXvgSJixB
	ZOxVzWIW7OoJ422vWXFYhlc+e/6YEAErPmidKlmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826d7c820b-80b5ccc4-bc8f-4d09-bbfa-8576cabb6285-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d5cb2d7635ca6b7b57ece41eea55b24d37f4bf5bddd4b9ccb8ad5bb792e0b8
Date: Fri, 5 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659694252
