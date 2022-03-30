Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0617B
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 23:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648682218;
	h=To:Subject:From:Message-Id:Date;
	bh=VxgkE4a2I9EGUnNx3nGRZz+JmtDffMPtYCZFsr/+3qk=;
	b=NYwcmjooPAGmCfh4ptKkADO59Cz1FCPJGcd3EYcBhoDN1PwKq6AP03RBTW5u7yNK
	E+CP0GFD2p/iWW8F85Rre4oZQq16Fmtc1QKisa288ZbNZ0FvT2n982AZq84DbaafL7m
	w13f2IdvqjsgFUlC3BQ1tu393ttzJ3zGa5o7njBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648682218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VxgkE4a2I9EGUnNx3nGRZz+JmtDffMPtYCZFsr/+3qk=;
	b=QI0B1cgwsdClY2u4TXA/y7hTbT2bYRA/SJP/hv9H3kf0RIcdDl9Q75b73KA8p43E
	FUK7AnaQv0JcG/AEK6jSLyHDHB5eCVz3t1p6LFtuKATxgXynZDOsD+9gRDp7PILHA9a
	5sZbl2UNaNvjD4PdaBtiY2FrLRYiAPCk8u1G0eq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdd1e3387-ed9dba7e-c4f0-4122-b97b-2beec4fd7e7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1453c4776795d3a6fe23d1f93eb30b74c24ecbcdff334391956c972563af173d
Date: Wed, 30 Mar 2022 23:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648682218
