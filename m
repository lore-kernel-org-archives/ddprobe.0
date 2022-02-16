Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F9137C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645011684;
	h=To:Subject:From:Message-Id:Date;
	bh=bJxrI5cfHJjqLCRRgGCnZCJ2JKQ1L2DEiNs+XpMv344=;
	b=RKYlhvvgFvT2p/CvjsD5GIzb+ZINDeZnYC/gQmc1mJgFcrpZ+9R0KZZ8NX0aHp+4
	wQUh+ilhkG3vVCHj4CJOSUaiZBXxNjvIl3h0cWSDKLdo0ltR9lG4I6P7npFXkb5Oexp
	HSp32WKQgmpfQBV6fUd3sZD9APS0YorbLts8LdAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645011684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bJxrI5cfHJjqLCRRgGCnZCJ2JKQ1L2DEiNs+XpMv344=;
	b=L8DUC26+szMT67+nZoasxUnuJbesJd/5AotneH0h4dO1vx+slch+jXPAqV5IYzn2
	MzJPgEB6BY8oReAz1luxdp9eIVULCDxZ8qxBJ+0X+7C+Z7e/kICSyThCTZa+ppeFsKk
	TOkrPhIZDzTOFME6c7Rrdml6HJ8c04LGSqJ1IXZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02564d9b-9b5eead5-6795-4f0b-9625-db90b79822b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ac4d0174f2a31e14bea386fc74f9fd607bfded047ed6bf24a302963c42e11ed
Date: Wed, 16 Feb 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645011684
