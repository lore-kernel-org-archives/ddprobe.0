Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE2F38F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647457285;
	h=To:Subject:From:Message-Id:Date;
	bh=RxGXo+qzmgKGt0zsZuji3aAE+24SW9LzBaIwNF+m76w=;
	b=e/Evy/nA0agIctvo8KbbndtCWW77V8JuxCY2r5l8nFmlsMRyJz2E9ncNZF1Hg3uA
	8cplReRpWe52dQP5Rxc2OAdzDo0SLliHvhL/NsnOKWBAnZ5VmgtqA8Tac00MRVgC7ZJ
	GA5Wjoi+bCtTzfn6VSJ93eLtRmZbzTyo20QxyYmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647457285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RxGXo+qzmgKGt0zsZuji3aAE+24SW9LzBaIwNF+m76w=;
	b=QDAOZWTeRg7bYWtmAnZN3+WMqCV2l4YubohkrvJbBkbZYfAJ2X9RE0LYGdI//yQ6
	1AQhOCd2KJgP7+bRe5DA6KSlamGTWqDEIZUyWS83qHjt/DHBYUmQVFwLBShW0s1vUYD
	xl6oqb8nB6cl/L1/tFqEkSSh0vulfKfmjrjzMWKI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f941b3314-65f00994-c16b-410e-b1b5-b67eecedca06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3a8c8d46bccf3c77954cb1d337c89d4e2abb1ca08b3ae7f1e768678100d5a2
Date: Wed, 16 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647457284
