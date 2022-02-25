Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A6B7C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645800684;
	h=To:Subject:From:Message-Id:Date;
	bh=ZyqsW8+Jvqwpkkyw4smnCTHEfP3P5aqb6rUmneIkCas=;
	b=fLGjEyA4TCjfuZJ2rpCWOCMIqQubXo7HjVudkyWQI0Z5bzQ5781ySXzo7Klofyr4
	wrBqIVLVFKwabwQiYhzwP3cn4iBsgTJtRZ/39TmzNxhaLg1Btin+4I3nM0xusJjogWX
	fwPp3/l6HuSncyaNKCApf0fzU+Kym+DJgSeXsR6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645800684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZyqsW8+Jvqwpkkyw4smnCTHEfP3P5aqb6rUmneIkCas=;
	b=iLSfnfWY92AuYxFbG4Z4+brLbhu3Uf9L/tacj9XVwWjBuu/cLy1xU8uU+9pTUpDI
	ftSTHvOKNOWEDITctuJfJBaGA1XWvzMvuk941Zap37oPMkytDKn2EarR0q7li9fgs+N
	Ucyz5nGEKi7caS3YntNPIBZ5n9JBFpjAUGtUpNoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f315d7cd5-098643bc-9671-49ae-9434-a9ca88340dc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d68393d60070d277f4ed8c690d049281f547e5cc8a5f7b7ca1b48df64c941f5
Date: Fri, 25 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645800684
