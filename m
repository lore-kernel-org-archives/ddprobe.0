Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D227C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659906652;
	h=To:Subject:From:Message-Id:Date;
	bh=ZmAb5C80MxYwL9Rvx4FYnMWKGMBhOKcz4TAjEq2cMNg=;
	b=LTJvzIo0wGt7sfOC+RRG1Gjc8giHpthe5BoWBsFLoEpoQhpxnfXYjGRer7sEgfgj
	AiBTO45Wn+mddOyvfOYkyvpIn2Ot89P47uDfwyLfGqf4Ow6DqvjMYnqF12OEVUJam2k
	di07LBQw+869F59UyiMWkZz9zuXh3j2/RKtstM90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659906652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZmAb5C80MxYwL9Rvx4FYnMWKGMBhOKcz4TAjEq2cMNg=;
	b=KJikyz0coFAaaQWBvDVrZY0M6E5T0cLr3xtJMYtuJkUxrKFvN8fVIhOIGhNv3dTC
	N7MTUv5yHX8kvAjjy2Sv3bZuOzeU9U2CHi18tqJWCX/KRTPdkcCXS0fg2gFI+TG1r6L
	bfo4Wf/wS2hWN2QSna1IGKcWxa9TozrF3hBLPad4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a2579cf-cc3f8cf8-8c64-4d6b-be43-4bdefc4c4f17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dfa2906fe80d326f7fa4eb60778a5255cb8760d7909702676b076fb0c7ba21e
Date: Sun, 7 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659906652
