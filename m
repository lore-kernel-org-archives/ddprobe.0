Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FF853B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8136BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670872287;
	bh=cBDEr90eTZqygnFsm3bX9TS8EJdRyMuh8HVK3tpFZXQ=;
	h=To:Subject:From:Date:From;
	b=SvslE5WcRUfAXs58tPliVVhPAtbTtFziHxSwNASV4xRHRkt/P1iaAs2uR+gvc5i7y
	 FxVJLXw/HwReBcsNUaugv+A3PcXM2XbVSUGQlooD2VFK6BS+jCc+GGafPW3q1p8zW0
	 XBnlgfp+on+F/moYhsUe8NREgQICNzUZGNoOPRs9zEQNKXJ0KCPveGymPLain/lBqa
	 ASSgZ62/SltUOSZKcaIGMhZtublagE42vYkaw7a9GRuMYtvkfG96N5ofF90jfLWwYR
	 BFs7piVGI41Dap4PCJxT2mIrXtBLBrlmaViouVTRPtlXVlaBZTDzUFBqxsR09kLmqj
	 Ke0EPmwBdQVtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66566C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087228741.9425.17231450467009412599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5c0a54944370732cf11ef718bd9bcb5c36e00d22a44cfe92f189c3ec5dfc44
Date: Mon, 12 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670872287
