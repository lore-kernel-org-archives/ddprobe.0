Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DF82F31
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 17:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647537684;
	h=To:Subject:From:Message-Id:Date;
	bh=jqL3L5xh+5tGvTxKzvOK4uaLljG7/XVCChsLGhQnrcQ=;
	b=C2bC4UnIh9lN1T2e3soScjMrUC1XADcZD9X5h8wiL1C0/wgXW34G66Zh2sUjTFll
	mKNSD5uL9sMJ+C5Ucfg72Wb5vmk/3j1dXz0p4EDjx+afqGzJX9Yj4RbBrNbFK4Jj/Ql
	5ZA8piznPsF+O5pDVStkVPw0zkCiheXpJIfIMi74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647537684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jqL3L5xh+5tGvTxKzvOK4uaLljG7/XVCChsLGhQnrcQ=;
	b=SI5k2hkwS6fuUZLQN5aGbSf5XdJ7N1Pg/p7FBW/EPBkyokU1b9XZKM6zqpluG/Z3
	C3b2XrvC/jirVq9bP4tWkmhvi7bv5eykd1RY3LxAizJXTy564DoFqPPE2oyajvFiNPY
	PQvZZA0aKV/59c2p9gsIFSvINXJpWqbE6ATVhNf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98e60100-3076da47-2a49-47ab-a46c-6d8665f0bec5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 336bbefdf787fab649a1e5c18b6e8c501be43b1714a6df06851d64c1bae013e1
Date: Thu, 17 Mar 2022 17:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647537684
