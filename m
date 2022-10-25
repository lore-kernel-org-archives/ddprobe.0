Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14197B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF10C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666708253;
	bh=ris6Z31DWI8oqi6IbEUXUrwNAmkuU35JgrXHOWozKvQ=;
	h=To:Subject:From:Date:From;
	b=JOpplUiwJO1QLC0G0xcUKwUTiK+fS2Fm6XlPUs1m81g2sDVFiLuYr+xBe2zUDwL13
	 UN5fkUUfiHgTr3FEXzYFUSJxedVM1l2Pyup31C90Rtma84QugdGICXUnw3An7AGYdQ
	 xiwyIOVSUrSw6L8ZDILE70smpCwnMTyFGwXTKr8rN0WZ+zWZKRI6auXVQpoAh1JKiK
	 lQHm2H3/eckIUMyBY3POLRr8fIPdBv1VPT7CKbdGL6tarEqA6yha5D4noKTK/0xdDJ
	 Xg7OKsa0RHtmkXraUWNXH1kEKHOKIIANNWCBuuERT3TeO+ibAjXfuSFbGefYTI71vg
	 eGPV+Lcg1yXwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51901C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670825332.22204.13601293454399417454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad0b5d179322f3c36a252827caf63345ff66ea877b96b22570e8be02ab7d3375
Date: Tue, 25 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666708253
