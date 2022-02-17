Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8CF1FD3
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645095084;
	h=To:Subject:From:Message-Id:Date;
	bh=ht6jtMb5x7Jo9gEXDBMkvaviHu77j7A8H9DtvgnS/U0=;
	b=CxGVFq06+rrm28CeC0p+3Z2yuTwCMhsjOm2L+G3ItS55ZfuC1uwzOzioUoazrUQ0
	fwDIk20PO17Hj+bxGWo7YfoofCJXnph13Q0daoqwZI3zCL7ncuZV+XBURf50CrJWO6V
	s3Kh8r3OC+VGFd7Ibwso6lxjehJGSEXCAd7uuwo8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645095084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ht6jtMb5x7Jo9gEXDBMkvaviHu77j7A8H9DtvgnS/U0=;
	b=i4RD8arMODoRDwaJbdQRFpL6mzjp3ZMhBptwrL+rPRcYgLT/DHD87qvJ32NTJR5/
	q52VVl6as+kbP9GwTJ6TgXW/OnMM+X1iIOw7155du8bjCyindYP6MNreGsZIc170T24
	rWaNLpafrMSKaLoSrZh4l5h3QEwoUbf60jDCuA3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f074ee2db-58ecdce2-0b2a-40fe-9f48-dbd252567824-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e704a14dbf4c1e6f3e2fa8f95059391364fe8eaa89f15744f23b38a95a24d936
Date: Thu, 17 Feb 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645095084
