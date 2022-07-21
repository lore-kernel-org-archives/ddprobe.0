Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F22B6441A
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 14:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658413012;
	h=To:Subject:From:Message-Id:Date;
	bh=ec4DLC4c1QuZXTfOXo4TKoCai0YMvZwATNt/+OI3qX4=;
	b=Td5KojiZ2Ygg9HD7DrpjmqdxKk1Ezm7a6jo5+5Kdt8zT4jVl/lNODw1xXohAdzp3
	9aZ0ryjyTWbjnL635EsoKOZGDQZQsEbhj/ciSyOatWMCh3lceLmtSjV6Wdw2zSSRkEO
	/L9Nrm8C8N0OXzCRlXhRB7tto8CUbREPi7mXU4tA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658413012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ec4DLC4c1QuZXTfOXo4TKoCai0YMvZwATNt/+OI3qX4=;
	b=EvR5Vf6pYAYGNjXP9q7CQxYbT8RHNKdLQA5gEpmEFm3NorW0Mv3JRHkc6eKrWo54
	6Y2XXF/94dHpEv1Y+tWISFVP/Wn8YDCJy/6fz1dnQkuZWByS+DyiHhT3T/og64gCTo0
	C4jh/6ExtHyrDuLYx4UslkToHW/rUoTqwPOb+gyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182211e5551-e5c736cf-6be9-4a61-8ca5-efaad48cddbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a23f2511eb7c076c8737d774cff5ca239b0794f00ebca3cc32be103c8b713b94
Date: Thu, 21 Jul 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658413012
