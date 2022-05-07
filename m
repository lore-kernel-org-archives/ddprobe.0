Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1030B7F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 23:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651965838;
	h=To:Subject:From:Message-Id:Date;
	bh=QmwuJK39jkRO3OpkGeFWjdjq4DoIbcVO1HyoyPT/Wfw=;
	b=bw/LrPf+G7d1XlKWFs8UZzcViEWhCF8FiWuhMkNldOcR12u0tIbAlV6sMuTYnW+X
	kvjTB+xI4IK6Gn6mXdl6JZmsLgeQsuZ25Pk8Ib8ouzwcqPbfNJkSY3A2u9EMgg3SeyX
	7ubBtni1A3W5dGWeZk6N91MpCBUQN+0Ijoey0Pvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651965838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QmwuJK39jkRO3OpkGeFWjdjq4DoIbcVO1HyoyPT/Wfw=;
	b=kuCcz0ARrrzOBhJORs+APylp7AJAUPIIUy4zRXDu9Zhd/UXISyC2vY0crHiKRe5o
	UGr6imRprxBSRXZgEXT6jz8f0L7577kicpvd2PvbV5t8VbIgaekH1rEJ3ALTtAaZ6Cu
	x5/1YBF/zvZ1mjXdnA1qZ/Zc67HQ/96prq3gfEyU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a0d643f0-b88bf93e-a5e7-4372-8267-54babb9ffe9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4871d4ad22e99dc9f003ebf51bc1261924bd46b474f2b288301996a435cab74d
Date: Sat, 7 May 2022 23:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651965838
