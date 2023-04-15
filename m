Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1317EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F238DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681518786;
	bh=izUzvmoYSRzhvBlhzMOnL0FJtatQLqv+n8fzZ9XO7+w=;
	h=To:Subject:From:Date:From;
	b=FMxwdYshsJwveI4fhvyfOm91kWd71UbR7NOAM/cRvFw7BgntJYWIJidL045bU1lT7
	 1PL6zeRth6cAwGyICZuif1b9UhmW0oY+fkDwcvUtEF5I6Cv6Y1RuDR43X/sCfnIOp0
	 c6x3+NA7m9V6YqMtaqfB9UFz5GKkGx+jxLMFbqG/QIJqYuoA6R9Kg4t8F3M/vQSMPg
	 yL2HHnk5ycIOR/z/CAvjLlwIC91UHlo5CkF332OMYp6y6W7KKsql3Z28mp1JI5U8z8
	 /87mIXH2e9B0eMcXsq7cECBH/32RB47hu/qTeYUWhPoGEBNUU9/PSCgDKpcyaY9zoU
	 xKmDRIBVssOSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD81C77B72
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151878581.4739.15357556540700388779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b7381ebb2ff4ad5093c54275f74099d5972bdd0be8bf2b5f91d42f7377f811
Date: Sat, 15 Apr 2023 00:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681518785
