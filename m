Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0481C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BFDAC433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666908654;
	bh=ARO24rhH06mPOOwtEiAn4BWKcMplH6p1PBGaCJojqJ4=;
	h=To:Subject:From:Date:From;
	b=FifW0f/6qD5qOPlayzWlD9lxb156Wt0BP8SmUUWybxfVF7Ok/EhKYuoayKtmD/ypj
	 hX65VEEczyGJBKr7eMqVgUT7v0mDLHdHVMcYEyxHefFjO7HZbrdkzYIg1eakwA7Pbg
	 UXvyawMQobZsvZtU7I1Mx4rv0+Jgiq6iTDtEaBfEtf+SaeqDVkX7O7sJve9K4BTC04
	 fnb+Y1BjgX1LAqVIuOke+7ubrVx4VBpCF/2jtcHvjyzqom7WPafWIve8NK5zeqhA/O
	 ySafvjnqQMrF0aVsjhqb5b0Mor7+/b85UxuV9ypgjGyPB+jj5Mo3DMQL/aaM8/mHbA
	 L7qt/PAXSI6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5685AFA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690865434.24662.7139206353486194639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c0273e8929bf69cc7ed6ea6359cae87f7cac5d9cc3aef6f934309ba0c60000c
Date: Thu, 27 Oct 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666908654
