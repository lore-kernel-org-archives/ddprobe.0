Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023867C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645937485;
	h=To:Subject:From:Message-Id:Date;
	bh=KTkp6Si9nXI3sfcoXtujFUWGj/kFR6kyvDzsKsaZAFc=;
	b=JKkfejT0oiF7GOXjk0OPIrgZl03nTbaalCYftK7P1qxPMD3l4viCuc4rGywAAVUp
	8P92vr0myiTJ4C3On1bblK2sjvhRr9BuN/U6IFdm0/RjruHw80bpSzWvpArThaAVFET
	hJ8G9uEnJFvl5ljnRxEmaCi3FYXBuBnAzjC7yp9M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645937485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KTkp6Si9nXI3sfcoXtujFUWGj/kFR6kyvDzsKsaZAFc=;
	b=QkufWH9hVJBQeKQagpC+6UR8UOznq73yFquCoh36PALjQuDzVpEPCaQrKXtJ/UKA
	3bOuly4foJOhtM54/p6zJ8tabEbi4FyG5OVTpjJIqTrqBs/aLq1ACgM71rPaGr53o1l
	UAOo78rGurfXNK/Dk2ztUY87BcRYOjarFms0zqxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3984e424-4aeaf14b-0569-41cd-8f5a-9f233c4dab0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1db036e3567b869faa390e3892683c3c639fef4f368fa642bdcffc357399dde
Date: Sun, 27 Feb 2022 04:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645937484
