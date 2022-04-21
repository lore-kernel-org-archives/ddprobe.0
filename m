Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3854D23B3
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 20:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650573298;
	h=To:Subject:From:Message-Id:Date;
	bh=tHm7BjJmgWxit01og2jpDVrQ56l5fbGcL223PCrpoaM=;
	b=XaIVm3VOD5gvjwZDK7GmNyVUihyAS3N0D+mNGpQqrFAbg2JkoTzb9Sku/1sHByk7
	5XkA9j6a4zQG5E1VJdsYWX76uXAKF+a7DrUEJ5Q3oDMAeuYFAAuT4bLKsqxQc4DsNlZ
	lqbUf428qFcpzHApHpdrYdpwHHdd6j81vfBOln04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650573298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tHm7BjJmgWxit01og2jpDVrQ56l5fbGcL223PCrpoaM=;
	b=Dc+sWJpCx/752l9mX0UxFB34CMPCegQQfJDX8uMiJtZsiWeptsqvFRKSupYlSywa
	YunX1PCD7P5piLDCQzShLzvRfcSOcPmpoUn01bzIbgI+dGXmfxbUISE/0ZRxdOB4rfd
	+6vb+Yq+AncpeU0UijbBcXGL07DjFt+ted5lMCoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804dd5ca5c-8ca4425f-b9ac-471f-bdb2-f94fc16135ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 241f3e4aad8e789be6c44f24b75c6cbff7825684f699799dfb4885e03d5b9ccb
Date: Thu, 21 Apr 2022 20:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650573298
