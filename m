Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3802E180
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE80C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683331685;
	bh=yaJxWhG6tpoO+xffhDOYLEhU2Pk8JIY3usTbq+ds0eo=;
	h=To:Subject:From:Date:From;
	b=TIacxeXgcoQNH7wIPSfSrtzffdVh/0bWXH0a8gRmbFXCrbLFq/4CYGtk8dlBRDTFF
	 jnaZ5haxtZiPe4OgbK0TICS9MzRbrTxmqnw4RsjZXBH3uQDjc/Gxj0oAWxcieunlMj
	 yi+SghEKcANtmQnFLKlz5hgpI/W3CCgV8L2+BPoVkDPbk5rQGKV9NFWHtecv4TP8cC
	 lvr0WG4xwXyetwCb+u5UeWP9Iz5G8FIRCklP3j9qEzVmiCwSt9qDcizprsJ2Bx7x4G
	 UjhxirT76V8jdQ+/gxISNv/0GgrnCWX/bp/1+3lItOqplo+7zqmyg7fDiF4oCkmR9c
	 a0XWwnK3BOjfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D31C77B75
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168333168576.24249.10929626877064632463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c06b9633bf46a92aa4a38c2fe98f5e40dfd26e10a142ed7b4557f6f1519f0ca
Date: Sat, 06 May 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683331685
