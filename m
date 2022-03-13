Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC629622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647151885;
	h=To:Subject:From:Message-Id:Date;
	bh=gCT9v3rKNIIjBzRY+VA3wup+m+X88hrIXRIGLecXfeg=;
	b=WytKlf2CQ9+Td+DFiN1H43Q7/7BQiojm/l627h9PYxw2j4iL06GRAUq5oK4ok3yp
	eAgmrbFrfG7CC/yfKKMKQpFaVVbuS7ovM5zdJp6jzLgPRn1/IIIS0RI46kUsRo4apBR
	XiKkPA/JINVcy0d99iYHxGRq6ktUgRQFXgUSfYbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647151885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gCT9v3rKNIIjBzRY+VA3wup+m+X88hrIXRIGLecXfeg=;
	b=eDYolX0ej9XE6lpvD5r66pcYm/5r6zMJq5+95F9u9xO9ncrIo3Ob2BPJ72XFLcRc
	TGZjoIfOpbPZQOxVuHkYe+xA0Yk6whr0ZjVu0pof1QYy7rUuHZk9nUmBxF+aDia8ceG
	tIsqUwegLdA9vPnLZwIfJn14D/diPQl81uL7hz6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81e729f3-4604ee61-18e8-4690-822f-86dc29c3fb9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2b59a059ae11a81cb5b5a01030cbbc08550378b4f2649f066d70fcada49b6fa
Date: Sun, 13 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647151884
