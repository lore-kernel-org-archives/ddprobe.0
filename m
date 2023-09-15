Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC16111A4
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 16:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5B9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 16:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694796308;
	bh=UlBverbP5Sjy0Llrkajk7/58S709EZbbB+m3/EKHqpo=;
	h=To:Subject:From:Date:From;
	b=ZAIw27b21002GurVMYQxDQZBRTig1dJVRyBk6pxcu1nBIzw9TKsEt+fM/+UEicaw+
	 +bnduDPpDKigd+dVeN+wcnJOrTugO8pQldKWtNpUGG2Bli7KPlxfmqTtT/Onj5cqyx
	 +Bv+0vEohPCW2uaPORY9HydKVVPAq/KmuKBYL5r6VXZFTTUtl2YKXmsr9eGKoaRelw
	 nSlm5tsmknu/Lx5IFBGXJddOYAC4CRyhJ/HjhZdOQ3N/daXYpE6LDovg8pWXWN2heE
	 WMiwiFKyYrwOKYjV32KFZwFDFHcDOYCOBy2UYA/nKXBRgRmDw/jxaeLj3PnKpBBxuy
	 3qucMf/qvgHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EF0EED619
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 16:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169479630867.4883.16302595784280897938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba03dbcf25dee640a5a040db5c817e907089bfdc5d137db83feb49a482e432c
Date: Fri, 15 Sep 2023 16:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694796308
