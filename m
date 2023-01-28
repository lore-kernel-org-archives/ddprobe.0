Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3899E2908
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E190EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674893585;
	bh=7k/F2uGK8ZZ+eSBtZgD7nDTZ4kyxOAfxuxu4qMRrC+8=;
	h=To:Subject:From:Date:From;
	b=G8ex1LJnVqv3JZPE1HDSHwJ6dKbN9EmZQxzgWfkltYo+Y4tZLOguK1o+JEKtzlo9w
	 LM4FJo5VvKEm5pDV77aGn8A+KvSu66WBG2jAQad7Z1Q7y0XEDSK+oQCB3uLN2J0Wf1
	 Chtsu6woD8Lg/iGjhHmnhfQhcC7wD4+SAvAoJ2O+mZuxrgIWJAxF/uWWdbtX4iZZzi
	 IN1Bs4gyyJuBwSJma/KZUymPkvHC77AABipHUgJQM8DPg0wRud0IiL+g0VIfe+vPn7
	 03Xs9FB+g1KM9kp1lwihW3gU2MnJUDL53Mh17Ox9Lp4Hg8V59VMci8kQ3VrHLpIjlO
	 YWl5G0wqO2Drw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36C2C27C76
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 08:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489358579.15140.11301182471556199572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9631455b1a36fc49e238e3cbdebdb570f153297afc4ae8e7db93dd0b51afebc
Date: Sat, 28 Jan 2023 08:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674893585
