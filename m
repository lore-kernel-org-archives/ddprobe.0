Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EA37F5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E985C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664340653;
	bh=KL/yPloNKuhMFAjCOyyD15eGE9RWrhGpmm6sQyAUB44=;
	h=To:Subject:From:Date:From;
	b=Uc05CGy6p/JLkmY4HEDe9aG//yOSfaO7+/r5p1oo6qiTATscHTRBdkj10cUAjn7/F
	 Sckix17Vcr1TMJCK2LWd8U69g7ja6joE7NjeGNQepPkTo78XaSvo0f9RRCsj4fHg1G
	 qEQMiIA5PWBcYLfyWmP7Z4uzzb1bObbcmPTJg6SAZaQ1I0H210tyJnmfymgfKfO02T
	 vldksix1dfXPAASLLYDCCzVmNFdnmMa8u7bZlQeJmAgeR2r+zdBF9xzJ4EJZkQjx1Z
	 8PdIEpF50eUTmiaI4JzIrZA1XLYqKeMOMCvQvED4AllLp7cJjUI1hlEqiH+ZQA1nT8
	 dJJoO97sG5u/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53736C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434065332.25624.14155573247116925467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf154b0d108b2c57ceea6a803c14aec08bdce75f6eb36495af4f052aaf965b02
Date: Wed, 28 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664340653
