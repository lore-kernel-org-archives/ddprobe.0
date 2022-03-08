Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F99F4C88
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646773285;
	h=To:Subject:From:Message-Id:Date;
	bh=8YWaSVf6j/Y/eKRwPvhK/ki74ewJDKEbXlNuunjU+zQ=;
	b=GXyr1ru/a9Wcj6JuXPHwcYfFai+Re9QrrBAJsSp7uD1WENKb+4Wt66S3Nsxpn6G3
	g2qjQz0boW5d+9i4PTBIM8hPPnOwqIX+y6TEaTOanxhgnO0NrUULt7RguYIpdLDPqH4
	tbLAhpP6HS07wTFGICv/brkClyH8xJVZNPFAcur8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646773285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8YWaSVf6j/Y/eKRwPvhK/ki74ewJDKEbXlNuunjU+zQ=;
	b=QQNyfdgtmA6CrAP7EIL24QefrUzcFoxfPV9HK5CjLXMagyrvbr6HkFJ73rqMHdp1
	tC5Uj/BWk5fYIePGCq/tTn1qKdnkmuMSxPUFIEAKPk4WqT1asGI6C1+e7A+SKVfmL/q
	0DxFc7YQj6iKDQJ2Ct/x0xkIJtlS4FRJl7K6cOLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b562f8e-4a0a729a-cc5a-4967-892f-b34d84cdaa74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13531d64013b3122001cf3eeec14b389708cbf014de76a66dabfe3dc67c8a298
Date: Tue, 8 Mar 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646773284
