Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B04820F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645422084;
	h=To:Subject:From:Message-Id:Date;
	bh=pO95hgprjioRg5NL6r4joiEAh93Q8ShgD8UloctQKig=;
	b=ARHaGvdKwCnKS67+eazKoV0iXwS64jM6JG7adqjJ309T9J8Zul7pSvkaJ6AHz8Rl
	sa/hSFAwe3ecm8XH1c+ttg2gRwBY9QKn+eRaM8FkDLmZCt5/YYg1F/hiaEUQzsy630w
	hlTuNp6KRmWx+17w1QEJLRNzr0PaHR300Z2rgdfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645422084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pO95hgprjioRg5NL6r4joiEAh93Q8ShgD8UloctQKig=;
	b=c9OSQX4vd7FQY5vRQqVmeMzRqwUUjKrWwdgDrZ7kRaiaXzpe1l4kkWc7p/3Z93Ef
	vA4DIEx3atuOSVY3yilUfGJ0TVSf7cWEmm8WUcaZ252ZIjOdURfbeAlnTXLQnVHGHrm
	OOIrbPZU1bXVEYKtyfq0zNBLFhsWrC5A385B9aqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1acc8289-693c8344-0cef-40b1-a5c3-9a4525d53d9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d42b9c7176410ab8205a12064f68e7d17aed695ed99641b046e554e142f57122
Date: Mon, 21 Feb 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645422084
