Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69EA7ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647922284;
	h=To:Subject:From:Message-Id:Date;
	bh=CHOFQnUOtz4meZAllMbtlrXLfvibAjnVKyKauRqyV1w=;
	b=e/uOY02d73H/ODWZH6j5C9O6PLahj46+sGNRKLuZRrIqGHAyhbbEf8QyP+G7pbrQ
	8uBKlZGMISftwmTg+pUuGrm29W9DYB8BlNL6GCMQ+a9jP1Kvce4aJcLn/WZwGOonD6b
	u+qukk3ex/eYuRbCwwn10LNWIp5rEAgdd5B3YOYc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647922284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CHOFQnUOtz4meZAllMbtlrXLfvibAjnVKyKauRqyV1w=;
	b=EOpgPo4egefh+n4vqIVNwg32pL34l4EXYlp6o9xnU0lH1eHA5U5bRT8yIcg2vZRg
	r1Ascw35bmKDxoURZPkbY5X6dJ1EgC5khtluEiw91wsYmADJej6GRyqmCePlOvk7cGp
	iVZFMdTVNy8Kv0zJF65YAqvLr8fQOpyq9melm/jc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafd288ba-c2acf83c-206c-4ebc-ae46-bd4334844b15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b2bd888af6e75dcc24e19d8d72dfa1ba0359796b5d2c65ed24bc4e7a1164967
Date: Tue, 22 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647922284
