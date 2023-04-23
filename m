Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC0129A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AA08C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682265666;
	bh=LeRYRxClvwCBakExuaQebrh90oD/Q1tPheCD/oM3Jos=;
	h=To:Subject:From:Date:From;
	b=PIDrigyspYoV62PhIctZvCBA9qzxwAJ8ZYvljkwWrOhqWpQ+ayDahxXCq0Nkz3E3c
	 1GPV5Sfnas/QHY5kvhNF5kdckcVCmJXevK1mO+MIcpPeUZ8N+48bW5jgHcmd6m/SDa
	 XVz2QEo79MqYhdanfK2up6A5V8QAzRLADJFje+JKQRIH1CFhaJRSu73AsVlpf1D02+
	 209IIFRGiP7XTSxF3a0ilIoh50TwG0ur2atcyyN2mqx/tQtsB6X8N78tcaFC7ywIR/
	 8wegcK9cjUNaH1gBpt7wFDrEYvSw3jYzab4bRTLzt7opQtQcy5yD7LqMZeMzXeg3vR
	 Okmb1ktRKEFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFF7C77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 16:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226566585.23179.10900691307383821293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6011642a26de0e1cbbff0341a197459944947b8172d9604b5b4347b45e6fd777
Date: Sun, 23 Apr 2023 16:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682265665
