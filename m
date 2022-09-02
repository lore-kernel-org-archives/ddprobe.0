Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D6E139C
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67D2BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662117053;
	bh=Djq5ITUO5Ns06ERanUvHs6rVBk6K4UOG0iksmHN1yio=;
	h=To:Subject:From:Date:From;
	b=DjVO4h0SAH+WPc0HgCXHJX87Km4Kqsa6bhB9eIq8DClutIeKu4NfYezaYURLRRGCs
	 MINS35mLkDibja3kz3LC0+yyQOa0DW+z8QhAQKANO7922AX5dqiUckmaXFGYMUEpKi
	 D/SlPVf6RhVr8m8e3HkWJoJ9odtabdAnILUploSozQQmTPL4GoAnAWeQYtCVUQcIlQ
	 rnv/tCg0k5NV3T1e6uPxewYOnck+WkBykt8gXl8pPRaGTcISXMNknHNlV5DXOL7gmR
	 56/a9G8bxSOidoRIEK2cUb+a0SGE48rrPQPrfgKCwL+mwmVmVUCGzRlqMpLDkcH4SM
	 ADFGweCPit9ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D8DECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166211705333.1314.102461575014921752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9000f7ce79948477adbb781a7722f5d2ddf9cbe6bcf170232ab47da180833936
Date: Fri, 02 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662117053
