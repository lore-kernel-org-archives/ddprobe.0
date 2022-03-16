Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D244694
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647393684;
	h=To:Subject:From:Message-Id:Date;
	bh=s8ZKsWejd2Zv4KwGP/1XhRO8Oy9ZAZ2x5CQww+F+Jwg=;
	b=LV/vido1Z8y6ZJyZK0k8fLQHWCCtaoXp6+LbsirJlDLkEHp+fryRkYcRfsjo0Gvz
	YLg6vAB9vekKLb4q2Mnm3xONBz9/R4LNoRqBHlARKBUVkAaBBlHdoQn45xzBVph/mw1
	TYMcFOcCSS2oAUU6SwIb7QYn5vyUKwFieMHzSRNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647393684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8ZKsWejd2Zv4KwGP/1XhRO8Oy9ZAZ2x5CQww+F+Jwg=;
	b=hOSeSce9fy6ZqPxnGjKtxo9x7gSf9vscIiAi4axNAquOAee48gaDC6fr+qI24mEE
	o+RynesNhiR/sZGCiwLrpH5f8lVPczuqvCu3JrulCjR0rgjGVP9h2q5hIrrAsfL+s3d
	r0gyE1w5n17lIK9k6CLp7AksyR3emC98O1/rReh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9050bd04-e3c04238-ea68-4334-b30b-c20e79c1055c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efc9d3b74ca1a50f1afb418880a1e2465d4f00659dd73e5bf7de548e3d1fddaa
Date: Wed, 16 Mar 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647393684
