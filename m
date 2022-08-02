Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77BC17F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659447652;
	h=To:Subject:From:Message-Id:Date;
	bh=xumOaZdUU3rPKrT4RpRAiUVN1MbBKH79gmiVKBvBH4U=;
	b=OF3gkLoPtuyHOG+UHNL7vmj74RaVSblNK8U6WFjqgUHzKAjKz1kPQf0ykYw3I17x
	GFk71u+krogAHszTWFlfFZsDikeoKJt0cpC9jwrwOGT07ue4NJZE3pQXwInCjHrQp1e
	poB1YCD9eL9/32icdgVe2eDbU0jX+QkN+OyRLB/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659447652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xumOaZdUU3rPKrT4RpRAiUVN1MbBKH79gmiVKBvBH4U=;
	b=PQg7BrklXqGsyQHvoaLykyZYvu+Rh11Q9klzmZwxx4dsQFzpZfovdeOJ1sJmdSBg
	adWASKgjXc7iMLXX3OLGea9slNxnDaJQ88WG5EG62pASSIUFwQ+XMR1g/ZWCF5T5gMB
	I2m4RmS9iiuEi3vNoE8jxjq1cxFGWN6V0dpiloKg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ec9b0e7-6dfffa88-4ac0-4d75-b22b-d1d5095ab92c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a367f17cdcd7c86fd2b4190ff4bc9f4d199d2e5e8af8b9ba74e2351d2f56eca
Date: Tue, 2 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659447652
