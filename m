Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC253C02
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E60EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665520253;
	bh=v6vDiWoanRgxTttA6Vt7JSXXcJU0NiDiDEPHMaSMOBE=;
	h=To:Subject:From:Date:From;
	b=R2/qAr4ZSw2KlKvepv24wO43OX0MuRm18+dJClQRP0H5Rr5s5z5CZYARvSXXf0k1T
	 dE+vTTEEP3swEyjKrFs47j7ynH4odzv/1zHst9EXQaygU2ON7KcIxLBwq29eWe47hW
	 0kERYpGdy3MTXKQpfHwqwVRxGOqZQ/YdlaaLEPkEjoQBnu9CqazIF2SGJwM+200cVS
	 3OJdJtlFO6SBd6k+gHXlW1ns/9oyzAnR0Voo/E9/GTLBAdSPdtce+OQ6VdtOCtmFCh
	 PBiLNVf4s16Zj551nBQz0XtMnbaBf9iLiEUx4HPSztFZm/XkG9aqQzyggEz6w9tArJ
	 LWTIj1NlycbVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F33BC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552025337.5302.10375691542307903899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c11c69de3f7769aae80e635b2bd558c001d01474469d4c7707b4f70f5741063
Date: Tue, 11 Oct 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665520253
