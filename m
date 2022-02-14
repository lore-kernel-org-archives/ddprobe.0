Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58261A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867439;
	h=To:Subject:From:Message-Id:Date;
	bh=iV0yaUBWZyyBpiHnXHbWeUwaTJgqolxuprYf/bn7HO8=;
	b=aQXIBmigr3ExhakevlJN4IxETIFkJhdp2SZ4XzgzigvcUQlj2CeLvX+HA4sH8W1f
	IUp08A5GPEGUQf0xKCRDLj+PgIcWeb5gMIbffVKLc+V1Kmt2nU8/uMfbyXY+03heNXE
	KyhHpQe+QiBMosgTYXNKO+IaOkAsLwMV0r058cfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iV0yaUBWZyyBpiHnXHbWeUwaTJgqolxuprYf/bn7HO8=;
	b=M6UnOA5L591xpCEPk2Rw9lBBCBeCgq6/6BzUyvHyxdaYFOQsgwwEMzFl/7wa4J2X
	jgduUOcfegLW8U1JlR2iRaYVISsV522pd5FR9WKYH1tH7DEoeOLEK9nvab1wQ8GcjGx
	/bPaUkgcOHeKmKCPSjIWKiodJd1YxLOV97Q4JySA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bd4c0c-0da5da33-46f0-4a0e-bf39-3eae5d4c0a39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52257b4c5baca40ced053a38518c85f109dc1be0cbea2ce3057a28fcd163c972
Date: Mon, 14 Feb 2022 19:37:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867439
