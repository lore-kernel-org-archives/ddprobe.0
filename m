Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012737A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 11:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650108898;
	h=To:Subject:From:Message-Id:Date;
	bh=/nm4E745z1jQips1RBF93wOVaRgYogAQWG1ssBed7I8=;
	b=DQWwt3Wt6RUqK1RpNzCL+N5LVMu//Oxu4xvDIn3k1kk+Wpx4V+2e+WJK0z1X0oXi
	/mAeFtESAesxoGkQzfq2pYWI7NcKJvOj3SQl7pucBBfDz8YEDc6fhyk//qu8QzzxWxK
	e8dueYb5o8wNVRm+NvRaee2mHC2bfuJV34GMU5aU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650108898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nm4E745z1jQips1RBF93wOVaRgYogAQWG1ssBed7I8=;
	b=JBk8QhVKw3/Hwpl55dO+VaZnPhkCK9lPkNplV3zXfXBYZEl+MvHWDPb9qnWV14/+
	wH5rIhNCmKjuRX333OYh0I/xOUnsBESiSIBc0vuRKQgdLkIz2Ije+QG8pXUDDzWgHtq
	kPhPkUOchESr3uByfDjcEDjDM/N8+0e0+4x1q5lQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032279bc9-70353a64-31c1-439a-b612-d2402c425b9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05b4d3a3fffb3b66006b6afc9810cee4d24f1390d54e0d82cf09609300da4e78
Date: Sat, 16 Apr 2022 11:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650108898
