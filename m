Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055517D7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF20BC43444
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674206525;
	bh=D513qIXbVMRwZYlmr3mWrbehDp/sxnej8Cxg96ule+o=;
	h=To:Subject:From:Date:From;
	b=bPiM9LT6RaO6/pbruO9bGZYYMleVyry9yuSyMUex/iNkIEHkuY6qn5/sjp0OPgRbV
	 KTQpbKcbyme0jRv0uiHMOS4WfG21x/PJtY1V7ZDT++1ubaukSdSsmMcANwrFxY2qSQ
	 7KAYQimzh6khWYXxKOkudl0ztW1JTV6c7OXTuS+H31jMsWqp8fDOmwhegHH8RyntGF
	 QOGmbbEyQudytnMpkZZyY8Oqr8ccn+gEk4U4d4HOF/xncexRdhZv/d496p9SN8Y3Xw
	 RjUyX1cykhf+n+ZdzntdIvS3nYp4peiki6flXxqISpeV91wK2dISEmfoq+aYmDRJBI
	 Zl6mfoLSFKLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C767DC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 09:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420652578.17936.3292890862352588629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ddf3f49baf75e912cd2f257b15fd530fb9114f492b2eb75eba88063954afc08
Date: Fri, 20 Jan 2023 09:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674206525
