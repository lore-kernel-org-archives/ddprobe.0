Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13672CA6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8609DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671561687;
	bh=PEX35BOXuA71ixnCgxCMpnbW0+2wVn21Rd3DVBRec4U=;
	h=To:Subject:From:Date:From;
	b=EWGgvcCHjRHGJ4Zyqp2k9p/mn4VeBcgJ2NlMH0S7VLeSosbBvSVPUGk7DOECgWKCz
	 ObflpumivEkp/OKHNZZHEDj+qKvdW4pMJ3C9tDscXMnGK8547s4IrQiSGfFnOqBq5H
	 BMNa0ECXnQsXLf1vsEc6aIvz44wXNi0gp5FR9RtC/AZ4lDNkx87aoBM0qqzfBvwJtI
	 l81vPHK2VGd08+Fi8oijpPqD1KimT7NbsLjqvsaBKOKfosvrKxJ1FI40ZO9wWfDuQC
	 e1pf0sI3Q/ecoDbePj4oyzbd8ZHep6UKJrXYy7m7OaJ3eolePeslbKocXYJTIlrMjP
	 P8+CRtTiWIb1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 695E4C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156168739.19450.8805875866447641834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9ff120f61f776e8840605cb6c57d1c9671e650b45d709eb73c702955fa46b6
Date: Tue, 20 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671561687
