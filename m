Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A4D33D6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 20:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650053818;
	h=To:Subject:From:Message-Id:Date;
	bh=HaJxYVjOAWtlr12glMvn1juxX3syL+VFg3zS7t4G40M=;
	b=Z+cTgMvqYUq0B1Uk89y5uAmT+FvMgGu6rBvzeLW60egVrxox7Cvr0f8xvCmSk3ek
	1FaBLxuNYU6vArt9XCHu/M+36SMOkSkhoF7/z8RNbf2HCQjpXrLLjv+EXOSnCVGmX6c
	T69Wb4EyRzUlzDxK4c2hBcFTxUvaM3EHHzHjcWfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650053818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HaJxYVjOAWtlr12glMvn1juxX3syL+VFg3zS7t4G40M=;
	b=U+qCdte4Dx7WqgBtKvJIY1OwdOGxUDyso7WeBQ2ul4JfWSypbybDXVcVUH6uCvki
	gTCihtPOe5p/zthQRLA/KTzIBR3KYRN1+sbgBVacQmyEIkEBeTJUpGRnNvrKD4s5enF
	EdA3DJJWahaCx4F9c9LHQYC10Jn3Xjefg58rT9OE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802edf27d3-1be354cd-3955-400b-9bfd-b7257390fc90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccb2cc683ab0311e0324192ceb24c59a0e10b05a5549c8155b48ffd8a6a04f88
Date: Fri, 15 Apr 2022 20:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650053818
