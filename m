Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3BFAD4A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A265AC433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673632287;
	bh=wuWJsw20hooTWvNtLqdkZOs0p73F+JbcO3RZpdHy6TA=;
	h=To:Subject:From:Date:From;
	b=mT25E7uVN7+oVAsezdbdhS+XBfDUCEWJ5kOyWIT2RDabzOpbZQ3qsqxQ/mYETsaVl
	 Q73pTRsFvLnmC5qh9TBStT39+QbQMM7XJWSa84httaMkrfA9p2JLVnycshp/3ZfKUx
	 EE+QnlWqfWtz2nJZNo/3oUHsRN7APWFZO5lBcgFP5dSa0E8DilC0XPGDAcYLhn1ZCp
	 Z2RguyAuTYlI8ELcb6mXdYeV4CvJ54yd4dctA4oh8TKN74crBFSWJEFwAZXsUgQwiU
	 alEHoxigCbquYjqGLBu2le+6sZ2aEH0Kkr6WjqTEPsEWsGdaPy3smZrLw68OuctE1m
	 3pP4LQHx2BgBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81206C3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363228751.17261.5598356007394394453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077dce7e905d4246cd4f97d192ad7d5cbe8428fb03d7397e58b6c0f32e7a94dc
Date: Fri, 13 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673632287
