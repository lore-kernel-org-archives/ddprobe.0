Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1438E20E5
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648543138;
	h=To:Subject:From:Message-Id:Date;
	bh=fx5eGIm1cNonVLerktmLapfIMNnXEqa8KQEOpdYxtFA=;
	b=hng02t+J3/mb0tvMCCNaIRbW6EKqIT7QUgtkmIb97vtL3SRRZmpN5hb4QGvld9+5
	7vxW18RaSpc5E9DlDp2+VMb5rICqphdVQKYWDYLiVq6dCmNCWlpZizWOxfyMbK2YqBI
	DR1kQZjOWbaSAQ3mUkx9KA7n2bfswQlJWc/FvTvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648543138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fx5eGIm1cNonVLerktmLapfIMNnXEqa8KQEOpdYxtFA=;
	b=eY2R48s8Ns3sBW9miX+jD9Bx/4bRkDPGumvHrhYcAuYqZ+1q2bpH9/fDQau07b/4
	pZ6aLq/jibHAPOZWkTR6+j9FGvwAr1MxNDOLM59+gOW54Y/wpdfZ/HesPHaVQzkEzYa
	DM/vviaXz4jVIs770LjLqmbTHCFo4gJGJsA2CQMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd4d401f6-73ecdf32-7f21-43c4-8398-c323a14151d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b67f77254306ab077181d7e0630638c6dd92935914cfefa9e334d4f696b13e9e
Date: Tue, 29 Mar 2022 08:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648543138
