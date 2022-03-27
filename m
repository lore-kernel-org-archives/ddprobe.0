Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C06615A4
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 03:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648353238;
	h=To:Subject:From:Message-Id:Date;
	bh=KGqbH/gzwNYeH7AbqaCJNckEvM8JRLXJHHmPe1Ghfzk=;
	b=Z9D2GRf9in8HUVmlBFtLnVRa0SFBrLSE7yk7kiJfqbBvLNuxwVghR4hTqIk5XzMw
	38afs4taWQIf9osqfrZyoC3OCefBd3z4s+KxxXEjB0WISfJFJi2Q5y1AyDQWhT6OZ/I
	aHBzPp3SGuKODH4kspsaWLffdDWQKcd11wiQXNrs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648353238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KGqbH/gzwNYeH7AbqaCJNckEvM8JRLXJHHmPe1Ghfzk=;
	b=boexgmh3dnqt0aF6wAEPsQXnbWUrOp7Bq5wYGBgAIsRrPTyJ+UBOT6C3LIj8beEf
	BuPY+jl7sdJtg59I5z+E1cNi303HJL/Ehbx79qqTAs1bpcAEu+pJB5SQ0hjHaOqMK4/
	JJtIw4GRAGDvHpkY/QZYJKCRcduekc7+gqFfrje0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc9825cf2-dcc64a93-930b-4e33-b13a-fd72c6be3ba4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb3b918be0ee3a3955729ebd37bd5b711c2572aa754f2d641f991bdc090f2ff2
Date: Sun, 27 Mar 2022 03:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648353238
