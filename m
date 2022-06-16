Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B774C29A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 15:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655391840;
	h=To:Subject:From:Message-Id:Date;
	bh=Lw+WGaip65U85m1fb76k9hbBuIePPZk9ev+qbYT93Qw=;
	b=dgNtaPvX5bzDqYax4Cm+roKS31JIkKxH3nO+POrNr7v4FDLtO5VbbXf4bGdCYNZ0
	l7n5Do4oSvDiV3MfaObsfQ95b77RvJInXKMq+rf1jvTWPqqHQg4nJTivj2V33q9ULfO
	KTpte5iKx++fnfQUm5b6t2ZDe3qtiZbnKyjAfkns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655391840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lw+WGaip65U85m1fb76k9hbBuIePPZk9ev+qbYT93Qw=;
	b=KDmjzDB2lYUCxRe3l1pe0vdI64zos/1R3JTqOMV3rE7SulxSq0UDLIDpSge0X634
	JTBDnxbW5bBUEbqh2dZsuIuTR8YHkh4+YkI0iuf9JcFxWTq4z6r7euz+iahhsbuip/F
	qAgrYAw12qI5vSVGvuhGFV9Vp20mr6h5l0fEEd+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d0ae42f-8228cda1-18e9-4b70-902e-a17e697f22cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41c0c1549fb1956a078b956aaab149d9a94ce4215a67bac0ddf41f79489ba36e
Date: Thu, 16 Jun 2022 15:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655391839
