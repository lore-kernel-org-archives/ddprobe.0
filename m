Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB28138F
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 22:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651183438;
	h=To:Subject:From:Message-Id:Date;
	bh=RrxzrnR4gh2z6BNByi73wkK345lMVrgYNo9FHBFKBYE=;
	b=IBAQ43ScCzeKOsIoFeasS+Q31H9YGDUjs0ZeEFaO1sKZe8kqJj/UZuC0xtGacrgx
	uhelJlDzNXB8Ww51iETOWKk9a2L0TUa7lNK07Dt7msgOvQK2Ev+HKu1BcvC8EOgS1RA
	h5ESRAeAfCRfpIKP246JCWGXp7yE2hlcJ1UfsRYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651183438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RrxzrnR4gh2z6BNByi73wkK345lMVrgYNo9FHBFKBYE=;
	b=XHKzWOmA2njjIN2+93JmsdpNHnDt+iqK7xEy7OIkSkdmfceNJoA4xcuK5kfstuDa
	NVqgBhDN2TQWHdKCmirNah4x7JdRW1sgEluQZLI59xPgmEd8Qz9gZE4qbPctHC/Leh3
	TW8XWPHRQ+UgMTkrbk5ZjivD9N89nP3XUo6zWOBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807233c9f3-2860604a-e8bc-4759-ae81-aef3d0d1c6b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9617fa99994478283c47911cf78c654d39809a415d1bcafef67181715a00ef34
Date: Thu, 28 Apr 2022 22:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651183438
