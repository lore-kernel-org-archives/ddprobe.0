Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E22F7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 02:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647312984;
	h=To:Subject:From:Message-Id:Date;
	bh=wnYXIXzXrU3xtGqBikDcr2ugN6mAlwqdhPzfyR69WsY=;
	b=kK9vXC5lAbNItRZS4zM0HpPVvHbxcfMZ1BNd7oTa9/BeW2qUdxDggrwAq9+9aKhH
	3mP35EO3gND/DpFmDXpPrRnzelbEb5BHfe8zvcTtJM94p7NQ6mVF+BNWMQtTfsn+lRQ
	QRqghedviemtlPs5nU+/7gURW8O3M5V+LPPZJJak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647312984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wnYXIXzXrU3xtGqBikDcr2ugN6mAlwqdhPzfyR69WsY=;
	b=QMhw/q7IEIdG+I+VBGQr4+Jh4JBWuive2tgMowOt7wELoZ/D0ZjvBzvoh4ktdwnF
	Wexpe+Ga5pxWaltRYWyRaaeQ17H7AhU+jGTMwc5XPsD9ySEs6GRDlZsgnBUUqF7o9ZO
	+NAL/OfMszMkrQVn+fdz9FfXWiQlkB9eJNiY4J50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b815ac8-e00f6811-8b88-4580-a022-5411b06b4f17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e619ad25a16fc2baba69fde1ca3827c782edcab5255c73f5cb5769bf7922d09a
Date: Tue, 15 Mar 2022 02:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647312984
