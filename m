Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD2C04A83
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645979185;
	h=To:Subject:From:Message-Id:Date;
	bh=6JGFRJkOYkhRJ2q3MLWWqrTk/iw9j4FXk+mYhT4JsKA=;
	b=OYSyHa7O9JJ00v1MH2o2bN/XbdhrE4jH0Fa3jNb+gtDyYCycV9JceHFeWpTgKuLU
	fvOQH6TdratCYwnVFV5Lqfh2n65SHtBizEa++tTcxz2l2wj36A0ivR4oGk4RoWhGsOM
	LCukyoDLQ4mrUIFOqGfzjJSciWm85RkKREH+XB4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645979185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6JGFRJkOYkhRJ2q3MLWWqrTk/iw9j4FXk+mYhT4JsKA=;
	b=fDKZeCE0oOy0SrblsZZ7m2vHgRpyJQtgjNwGEZfKhpGXUkL742Xfx2sO8vGWIavw
	FOqUq4UJVJFdGHy1Z7HNYawwfforPyHtmR86YIISW99YW37NcGqEcJMK3tE30oBSJE7
	AZqqIMRT/x0kU/sZtaJ1w+B9j2eviRtTmJY6tsBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c012e7f-dffab304-30d7-4240-83bc-206acbe4569b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70c07c5b8f2daf30209182fac690567dca8df566f7190b0e1715d346f96ff8d1
Date: Sun, 27 Feb 2022 16:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645979184
