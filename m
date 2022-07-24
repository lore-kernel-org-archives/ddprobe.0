Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0E57E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658632612;
	h=To:Subject:From:Message-Id:Date;
	bh=iMXnLbgEzj0/dwYl7se4KKwwjNqrsRTdUp4p0EoIKrI=;
	b=dJi1aVIVNNsIcEcPhNjUu4SmrMphfelxyAcb41ILrHsFOdsC3cknEDZPnQ5Khrxu
	T3YzI96H8EjjvGY9farb6y4Snkv1wzOcaKlCNUuokJ5bAQb3SzQMs7urMmNYeG/eToI
	gqIq1Taa4/xSM8khmtdm/42IpYvDvH2XAPqaMdR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658632612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMXnLbgEzj0/dwYl7se4KKwwjNqrsRTdUp4p0EoIKrI=;
	b=CpA4q43z6klpjjaG4toDqOcM44bUINhCUYJ+i0n2XF88CV2nFag9XS7+Fay9iw4z
	ywwC5KEkvRM7mCpHx06Sh/xqHfmv7hRdwsaAJt749Vq11xttXugsu1F7PqlmMf2f1X5
	tb8C+OkiP7YsJxwBXbz8mN/4wTKqy047XE8+dzxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e3529c3-f87524fa-5e83-4083-b629-081d29a33684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc853f144d3e29c1c2f85cfbdfd6e591dfdce58074bbd0b5a3cb67c0acb49250
Date: Sun, 24 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658632612
