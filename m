Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80253207
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652299139;
	h=To:Subject:From:Message-Id:Date;
	bh=Ss53qvG1e2yjZlCDIM0MB7E6myw9eeu0Lmbr/6mvcCY=;
	b=du6kRDiWFrjKUaz342LAq+N4+Kx8Zer/9QVfBFAI5EKG7tzoSKsb1qCTop14op1s
	wHTxilG+XiPKQPIwGypqvoLRznUKUXHvAGj/jCVAu8zc7LYZkh+n+w+1llXdit/gtEZ
	lPGjHQutnAoOTJ5GJz+lIFoilnoUz8TJwA62bp+I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652299139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ss53qvG1e2yjZlCDIM0MB7E6myw9eeu0Lmbr/6mvcCY=;
	b=kqnxSPQqR7Wi1Sj3y7ni3PscP+gyE5qy+29ubxFVapdb/5hWq8+FFr5aFwbCEYUb
	/Odi+g23XL9PEUtVQqMrxbVqAQB6OEnGC+LyUKQ/gBv7B0Bu+pXZ7qL4JtMsOUN2XQP
	xrKgqzfzx1tcPTLPIRfJB8ZyQLjAGHC1SIl6fRgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4b408fd-ae7da566-9b4e-4d74-b9f1-964ddb5226d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71b7a571b26dc4e933fa644f50ccd5beacd2910971526699030531c27a362ecb
Date: Wed, 11 May 2022 19:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652299139
