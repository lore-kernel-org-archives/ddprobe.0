Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515FC625
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 10:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648635838;
	h=To:Subject:From:Message-Id:Date;
	bh=pM3ZXOPpsbaw1ZLCFGG6DL1wZJUqrvqvzm3ou0THNU8=;
	b=lG+CyJ33910ah/Bd3s0uo67U19q7m1MTUoJ1My7Bt38DP4CVNxkPEOkYYPw+Y2Wd
	LfHmWDBUPWbep1VnIIx8FGb4rdhaDNAmLvkqLO7fq+EmbR8uCxq45/fY+BHSKSl8DRw
	r7Z+wrsa6O2v5LE3x9oT2OOEn904XZYU9QNwJAxE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648635838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pM3ZXOPpsbaw1ZLCFGG6DL1wZJUqrvqvzm3ou0THNU8=;
	b=PwNE0yR8ZA5fPlYsnqO5X3lrTyWJc5vmsUXZO7UTVUMO0uBQDciPZzyOnKpBgzSp
	2s0d7GqI3wF0OZFv2BfHs6BSFsZKUzWLzdjKwT+omoxjn+oJchqioqaWd+O9kADNqxv
	esCzD6SzoB7M91mGchtwTTrEPnuamZ9AstEwTl4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fda5a7f24-71fbbc9f-0340-41ae-99e4-c2ec5029f18e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a4a283505856135628f9ac4e427eb88eb0ceef9ba86a5a94f1e2bbe71befb47
Date: Wed, 30 Mar 2022 10:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648635838
