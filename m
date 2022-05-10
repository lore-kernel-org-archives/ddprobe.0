Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF2623C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 07:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652168399;
	h=To:Subject:From:Message-Id:Date;
	bh=wgKeKbl7AAE7sO2ZfDztGiCgq7nuB4x30cKAyvSQ3LQ=;
	b=TBCtpSlJos6kEj71Bw232jCcEhu0VtPiIiW3VuH8ti1eOeRPCf9tMOw1RfdvA0yV
	wu7e7MlJ0gnMi8diDZBqXVxpUW0c1HqabUGeEF2p0iskWZIZHfdNo++GTlNrWCZpmZK
	YEk0APdQ7LpkDGQGg6IIoYW24da1UbF92dAeJ8eI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652168399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wgKeKbl7AAE7sO2ZfDztGiCgq7nuB4x30cKAyvSQ3LQ=;
	b=VxCH5qHUK19sKpTnuwpW+jwN4ldt7xXJTgRM+7njy+xyVlVsoHCwRnjWkheGLYiM
	RGW1q/sUk/uDbgLAX6nE8uMq0PbRb0BZcVMIx0nJFYKfEiEWxKO1mVyncBoLuLBOv28
	eU6QTTYDiWGYeEtXcwDSKQmBQjqzt+LVqqDaoklM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ace919ac-5217192b-4fc1-4cd1-9780-2037c92867f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d3a282389d767649571726a4fc92f22e37213bb886950088f0df7db8b1743d7
Date: Tue, 10 May 2022 07:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652168399
