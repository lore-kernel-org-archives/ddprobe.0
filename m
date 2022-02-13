Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A56A07C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 06:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644734433;
	h=To:Subject:From:Message-Id:Date;
	bh=yVFGv4Bgem4NOBYIdN4RJxUsaAwLbIlpHMJf5tImHoM=;
	b=MAAKN+9w1rpq/Efv9BIY3/PNRE9IPCqmyuHO1IabbEWT8LUIxHHTlYgL2qfqSmtS
	yZl8pgTQi3W9keE6bUTnKnthMSFqThjS2s1JL/cLQWqSK4jTt16iEXzwrNic2SC0sID
	cG4juQ0FrUDdtuTLiKu74OS4Vrq0FQ7T0TMpjyys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644734433;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yVFGv4Bgem4NOBYIdN4RJxUsaAwLbIlpHMJf5tImHoM=;
	b=hj1ibs6NKhC4AR383johPyroURzNZMhQgcybmOIZkUL6I/bOyWJQaiVmnGvU6+3L
	6DaAe29KOKXr7kIIDHwWjPlMF8QbDTpeHPBcfk9Q1D6XYhjZSwEoHQAggEHmdfRBwr5
	ejvzKo5QlLc0VUa2A22llyytq7DJ8ZFBoTakscUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef1cfc9bc-1e830d69-5c2b-4995-98dc-41c8dbc47016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ffca0261a5930f52771d474d1b55167bb3eef7429edcb615f12f2da98b0e0cd
Date: Sun, 13 Feb 2022 06:40:33 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644734433
