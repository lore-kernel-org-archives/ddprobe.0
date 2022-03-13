Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCB0810
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647164784;
	h=To:Subject:From:Message-Id:Date;
	bh=iEfmS6W7OZ+sPNo+WwKuEGLTW6ZvwKOssS6WkwtaYAE=;
	b=jkr5fJ+x5YJARL353t9X9Xv1irxyhJDjHIB5B4Nxpv1QgcOgN2YqrBJIxJSwdvg3
	pDWrQwJeV8nF4SIHSUM4Jzd/DszT0w2GA7hhkbhj/0svcYk37pATqQvzw/oa3rDUe0z
	C2bF6jxwlxJ7iwExfNb4C+eQSCjUN87V6kElyArk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647164784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEfmS6W7OZ+sPNo+WwKuEGLTW6ZvwKOssS6WkwtaYAE=;
	b=gRlz1nVSRwo/YN34gw7UO+5aCLoD0b3BimodYppIAL88lN/Z8SLZlQjGa7p9pUTn
	7tE7zBLhsK3MNfjr+ZVDAF6WgQ4BaGKUPWACwORFgT9FBLMVnZWL/mT6a5DderSaXKt
	FS+IjI4Xx52j23nrSeHmx5HR9SpLklObUuMGc2Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82ac0064-b9b23608-2a67-4252-b1ef-f56835747f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39e5224eeb35676450d6327ce18585d3604f08fa6999c1e5cfaf42dc397ff01b
Date: Sun, 13 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647164784
