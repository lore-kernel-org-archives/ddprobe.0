Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349E17A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659051652;
	h=To:Subject:From:Message-Id:Date;
	bh=Q4Zf4kwqwIQ7XHPVBIRdlQIZVK9GjYU+j5Dj4yTRS7c=;
	b=OCebZmqZtttXL8hfDDwHiMj61x7rLmenzN0k4tZR0Nmo5TEVXTnf7YXZRJsmXfhl
	1ssTs7X+AC+2RS6gohpQOT+iVd1aRju/+Dq9ZHz9yyW/LHRyCL1/aBHtPFIMBksJ/Bh
	IGj8wVCCt2RLjwcuOzfOzbEek2cyaOpzBDUB9Nqw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659051652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q4Zf4kwqwIQ7XHPVBIRdlQIZVK9GjYU+j5Dj4yTRS7c=;
	b=EuqgZoLcUm5k+S6lSb94jFNJVL0eY3Bw2C3EcPS4pQhDxjZIhnaghVTrnet0nZA9
	+p0mf0+iWmNbXlW6hXUjlUKWMEpH+om9hQEBxj/KpJoEOraetn87D5MnWV1vDA0sbVD
	pSc2IIUOEUIIe2e3KBZrrqauAAtQmcLlgl9Z40aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182472f35ad-4a3c34f9-ca2d-4ae9-a678-c3277ed86ac5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 606d5430a23d3fdd3b9aec063f0a29a73485015f98d9259f02eb8d9d55080f4c
Date: Thu, 28 Jul 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659051652
