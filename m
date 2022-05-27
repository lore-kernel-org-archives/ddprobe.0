Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251291FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 18:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653676559;
	h=To:Subject:From:Message-Id:Date;
	bh=Qq0g31lO7RTXMBPTUWK0/qui5jTXptSQUmeNWzbWwjk=;
	b=FcEbhrpX8DIC3RVCOFJGy1Ivoe1JDUgrVmAIoTMLI+CubFu4qnwVjO9EIuXyAVoE
	pEYy2bTjC3W5sc4VgLkZ+4JkL69HsgPt27sPW9Z+SgcCr9U+tVamWEQDQ4x4I4YJVIN
	UWUSDfeGDC04EQ1Pdxk7Z4LcENRVGMBsMPzYrbPg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653676559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qq0g31lO7RTXMBPTUWK0/qui5jTXptSQUmeNWzbWwjk=;
	b=fvmjZeHoyUh9h0T3NNz5w9foM+hfP/IND00YwwP4jRYfENOKC7EHf8szVSCR6uet
	XA2B1kDSOnNYA7ZP/23fkhMWeYd0YdgEbeKuoOZ1wKba7UGVLQwoxqMBmtdsOLgA7Us
	yzFd/2mN9ta5tUyIzaTAJOM7d0Tc2gBRjaGJYZ7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106cdcbb2-00831627-3da5-4f52-95b2-2d2f20026d03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7e853e8370286be74908673e4795fdfd4e8effdc32040327aff67b9b1781dcc
Date: Fri, 27 May 2022 18:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653676559
