Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125CB3C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656433612;
	h=To:Subject:From:Message-Id:Date;
	bh=oeHNv6lK9/WvFaY6eGg4hkd222FxTsSdF5w9qEwRnOw=;
	b=OkZj1b07XvSJxsdDYSUlGvbOuDE/7klfvwxnPvuOVape793QfSKTP5Bg4vwc/5d0
	ZSmuEni0kT4r8clY3Z8yrngywsYxkBU22tuI6tuwH9+OH+X61tmehvMOF198gWWDjjz
	bYb6CoI7eJYd9Z7+mYb+ZAk41/fSHxU3BPw2Iv4E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656433612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oeHNv6lK9/WvFaY6eGg4hkd222FxTsSdF5w9qEwRnOw=;
	b=VzXUsLqRMiNfYkq+38d3BzEp0+s06nkm4bM1gLVN5bRj6nPcOzLK08+6IXjDBzfk
	crCi5lAZBOMpSEg6bn7k+5SZQcoil4deJrNx73MJX/Osf7e8EVt5SZK1c9T2qA1iN2/
	a4UmgxOi3sg+3paZwIQBO7x4ckUYRApwdcEWLQGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab231608-ea16738d-15ca-4a1e-9046-35cc66ed97cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d3f1af2eb64f920847e10f13ee81ec032ca97398d4dac90f4eaf2361fe9b1ba
Date: Tue, 28 Jun 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656433612
