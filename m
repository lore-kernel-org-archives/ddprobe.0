Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602C9C89
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645670184;
	h=To:Subject:From:Message-Id:Date;
	bh=DiatGB84mGhndFp6+a1PzaiEEIrOTPAh9Eu0Joinhn0=;
	b=bVl0iLSDQku3xHhpW27JIKyrpLH8W7E7wwu/gmXkmjVMpSIxQ2kWeJ3eZwCtXeGx
	krBd1Sm1Zf9xQipPR1RYvbvq9UOe34Red+xKS+cb8vkPRVhRn/vgQsv+PK65YoCNqlY
	0eOPen+qiDcoYcecP1PaGy8lcbH59XiRo5J3XB/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645670184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DiatGB84mGhndFp6+a1PzaiEEIrOTPAh9Eu0Joinhn0=;
	b=ZfqM2NPykCDO89lS2w1nH9v5FObkKsEaErP79wfCkWACy1yuqvOZIifn0YP3xdns
	QlCUaZBDY1pfeDU6NyM++8Zp/STEnYMSJ5K2kfLSoOF09cy8GX7AfI/QGC9CNW7iuzK
	ih3SnXfY1QldcKqXnUd/4PvWXEo3CyP5SJmU8nnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29963742-86877882-5f5c-478b-a816-ee561dcf683a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99f7d275a58b7bbf24808cdaa3229e53719b1f07f8dae7c294e989c15573ee81
Date: Thu, 24 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645670184
