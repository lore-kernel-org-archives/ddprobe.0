Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B490B6AB5
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 654F2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666396853;
	bh=dUIag1UQYPOBMZ7RyDDx4lVI/RWqD94e77AxoX2skSw=;
	h=To:Subject:From:Date:From;
	b=VFufFPJ901QvQl3QAU4Kxn6RIiey5QDlvH+eos/iAvLzmh+lqgozuanOjNFSR3L7X
	 zxfV5PJrvLI3BYly2Dj9GYL3tnLltPH8HUopnh7jdbCHEH4+rlb5tA6XwgGY1Lrs3R
	 hvyMSZcJoEG5o61yI2czzjPj+kR2x8vpgrVR7ZhIOqt9iJltze3Q3RjJxEYuPlx+rW
	 2boOj8OzZQ1SRl4gWeCn3ipu32vFNLc9Dsq72YnAGdQFNf42sCWTtT+p6lTLeziUcX
	 EhPEKKaL+x7R2w1+YyqKd+eat8eBUpzx7aflL/1KtAvNay04HsXT8G1jNdSoRzI0W/
	 c2E+gzjl0DwCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EF97C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 00:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166639685331.5736.9237230321584849129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d697ef0ec08b7030f62b08cf654a9f7b84d0eef3835393bb22a899e1acd53001
Date: Sat, 22 Oct 2022 00:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666396853
