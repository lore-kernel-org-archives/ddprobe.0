Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FC614287
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qps7jodP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79232C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699441096;
	bh=WdWuSPx5O2BsAwl2uYMsc6jBduT5c/03ZNoSSWF8pPs=;
	h=To:Subject:From:Date:From;
	b=Qps7jodPyWuktyoXx30CkvtymcMftejxMGMui7zX1GzKm1d/aAahnQhZdXXLjRV7E
	 vcbisfmd9uB7cyEHXLi6wOfzPEMbzvuhhydSN0Ljm5PNXbGE/+zEyFqOlLCDrwhXe1
	 KFLbldOnc5Rew/pBfE5RKo1VmOqbbirenXxbc37XWLH4gXMuANFj1ZhL07MGd1N3+Y
	 AS64X0fTvdA7zG5DaEvVkK8TN1vqKfzaR1T+hewdGaVGLZM4zR9pkz7sHBWdIGEqp/
	 mwub9bmwiM0ZAOCgsdGafwVxauvGfqs4Sx7nDE2BI2mypUAycGFUTZndz5xdvfoIp4
	 O5fgEpAtG/AJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6005CC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944109638.1434.17672497237781768663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a4503aa10ac590f47a723121ef14fccf175cf09de5d52f996169fe7cb191dd9
Date: Wed, 08 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699441096
