Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A097C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2338C433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690624328;
	bh=PplD8UKO2iIQ26MBDMCLKLQJ0xXDNPKS6VXVhAZ8EQQ=;
	h=To:Subject:From:Date:From;
	b=fQCiZSgE6+/0wk+QJGpk95nUKjU69tDcZEBL2qtTqzrmk0vBP0+SyyTDd0p7dKofM
	 /XDcLzbM33prJ5ZcbgNrXl0xoyhi7KPffnl/wLmrMnmEqK49JSTInUrx9pwf+tWqSj
	 Uykw67ei/vNv6QUk6Jy5C5QM+16AcsKoZvRhXVyBZehy68WOmkpVL4TR/nWSdYVFMr
	 Qi8IyL3yyZ5VYwUSZM71KbvMCYc8r3YHD9c4NfyYOy2gXYwsCNUFeZTXVebCUNpvGX
	 nR/8CzhzIuGYk8X7bi6raHMg7gyD4aDy5sRfhRfK1fx+s85us7wfE2Qnj01hES9WVW
	 88aI3nZJlipjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ECDC001DC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 09:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169062432872.25507.16321301259683777190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a053570274aab744c5c106d311e5daa842c930c669206d9b983d656e44cd0
Date: Sat, 29 Jul 2023 09:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690624328
