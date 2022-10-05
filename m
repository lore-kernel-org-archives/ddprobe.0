Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD7E4365
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A99BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664950253;
	bh=OMlx708orQAAgMI8zkbYYlM+DDrrG2SMeJUJYffXzj8=;
	h=To:Subject:From:Date:From;
	b=OGCXyLtmv2LSB1E/hf5aXEeYfwmyJRw3FuKyQlApY5QXDv/BHGg0y50jiFXfh9whu
	 JkrVgxJLAwnE0CAmb3NVMQ7yhhhZ3AHI6sxJMbFWg7PvpKAG9iOJD8xGuI/QDeTOvW
	 he06QQoqdcZT1kyrRjAdGxuqsq8AfRJ6NJeEO08ZMT7OwOPOsX+Ui+YY8m8cex/6BI
	 p9cf5m3Aq0/USYbAJbkI5SPGFekjb9D4IFXRF2DzGWYNzW8lvDA/JmvF2uGacaKTjI
	 sczVcHTaW0FD6A+GL/jlmgQySD66yP2u+EFtDR6ySiUZn3mOtcETJGm74GgrrCA5+d
	 gmcjGs407QMSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EECC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495025336.9456.2876908031009213727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036c2373a22d263d97b630c0515bbe772825d775374f86c942af4a347bf5ab71
Date: Wed, 05 Oct 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664950253
