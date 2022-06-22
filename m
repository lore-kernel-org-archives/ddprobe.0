Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CC61869
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655919839;
	h=To:Subject:From:Message-Id:Date;
	bh=qQE0OU7H+SG1Ng2k5y1Ox2bTQkAyxOfaIB4RP4yGogc=;
	b=OzuyuJotXssROxbNkAykod+BEJWpwyczCjkBXj2+NBbwfVw3OmXY+R+ib+BwxiYi
	4Af5z6/IHGy4uLHsQvB6njrLlN7jTc/YWGyTscwg7xfY2KFWRF3xCN7lBNWlc2+IeOK
	jeXbOzeHpbdXuy99k4ZYazoQrj41/PDdR1OE6nQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655919839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQE0OU7H+SG1Ng2k5y1Ox2bTQkAyxOfaIB4RP4yGogc=;
	b=amYaM+dZSa8qALSSSGzHf40qDuVA33NDXFuoKY89Q6t4rQ8YYo8LdCq8cMD/ouV+
	8+P9XhQE4k2tR2y6A1vpb7wgWxM5Tff1rBXPMAvBcCWDGkp+/jIJ8ketmrgwZT7FxqO
	pEK6hiGTey1Wfh6re9xUmYEnIRRYw00Xdri3fHII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c83882b-bd38c847-a3a2-458b-8f87-3c2046a487cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad4f0962270b97405cfe64e1971a4fc8186f2979b8549ceb2e29fcade60e0339
Date: Wed, 22 Jun 2022 17:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655919839
