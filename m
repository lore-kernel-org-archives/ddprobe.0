Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F9C1B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648050084;
	h=To:Subject:From:Message-Id:Date;
	bh=G7Q3P3KXR8FnldDe7XlEMqi9Y0EFHuHKUAHrLDLaNe8=;
	b=ihsnZOkxFzFHBwjihLi9tuvwWX2ieNQw2z0sNXgFxPH8ThqjTZ1fw8mHZVHVnXma
	sO2TyQjhchlCt4Gz2yYTlw88wnZ5uhA4/pBOgKG8jmXzMhYYyvkW3+fn6bjB619dqh2
	JzdpXZBSJZp0MHdUiEZ8Pt+aUfqcq5ugf3pfe3og=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648050084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G7Q3P3KXR8FnldDe7XlEMqi9Y0EFHuHKUAHrLDLaNe8=;
	b=Mc6w/HF59YU1fKTDvUEzA/nSPHf1/+PJp0rfiuVVsu2inRPJXLjF107J1cX+EPMM
	5A9fGEUSs/WK7bq/WNHw5NXoedCME2z93rQu0yG5+RbvaV7bj8WkG0uTKA+gw0HK0x8
	Q3D0Jl96GIrTT7mcQN9zXSf4EObtiqVxIBy93hbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7709bbd-7d235470-21f8-4c48-a0b2-50ffdc3a6548-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acacf520e6216303c1c7ffc5640741bfe1ea533fd681252abd02023778b49bae
Date: Wed, 23 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648050084
