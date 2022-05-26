Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A15EA0
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 00:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653525179;
	h=To:Subject:From:Message-Id:Date;
	bh=mBoHkTBzZOeKHnpXDzLVznkfXb+RyNyDFhQfDhGEFr8=;
	b=A4Wd3EKm3k1tBoFNVvlzMdNVCa9CyGrvJnHNbbARTyA1Aaj2rurms130j4CkAhYH
	GWEypRpJ/MEyjX8UDEoWYI5iVvoLaTX9QoWUFPyHrUOvLbIdjR6c2v4KNchSiNPY3za
	yFq56JPOI0TAl5q8semq5XlYgiE2Wj5mL2mCqhK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653525179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mBoHkTBzZOeKHnpXDzLVznkfXb+RyNyDFhQfDhGEFr8=;
	b=cqjx+C6SPT6kbSksN+gt/SvGAFt/+3P6p31RTi3HhGqpBe91hioSUJXtkuee5src
	47XJI7wzrLzq3TUQ/vwLrDYMbyMNyt2+xOFKAEcPCHujrEVoamC+B/0AWDZZ2VCUnjH
	NuWWJJ5LnUdCreA6VCDoR6oaDOn5/5W6rqTy26I4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fdc7eb6c-2ebf318a-90ab-4617-94ba-f284cea084bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9827c3bbfd11d47ff3230c9eef0dcc7d04095225c320b188ece7fa0a55d676aa
Date: Thu, 26 May 2022 00:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653525179
