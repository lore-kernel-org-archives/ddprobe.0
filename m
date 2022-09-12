Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34417F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED65C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662949853;
	bh=7XmOIbur2lOzqVWw+F3pO7BzDAvFRneyYqlIoiU0hDE=;
	h=To:Subject:From:Date:From;
	b=bvedcKw86Mr90hO7RonVHlre8h3r+7jLQCjWGP1mfRbbDBSjkRroLzzy1MH9SB43e
	 EVs/OXE8v8d5NbjCgZdVo93KA8MAv1GHb9tLeiLWcsiW7vnJcNA0XBe6PUmVKz7T6r
	 vKXTzge6K+fHwwjrXYSaHEI+sUx1SaG1q8KJClEKrLIRHjbPnb6vd8uX6kN8p6ojLv
	 HN2lU++NskkhQskXPeZUEBEnM4qjJK82iA8DhYzCn302RWIVFJKR7vvE4A+4TJcg8S
	 i/FDn5Uu6maUUyPp17DAyaQBwo8kqLVteT0s6vdAv7jV385EQiVyRwsO+waYzr47/c
	 2PS4qPhgYDYdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50016ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294985332.30331.6135443812891844881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51eb265258cf073fc6c7bc321929614db322a9fee8bb776d57e74ff5ef7fcdcd
Date: Mon, 12 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662949853
