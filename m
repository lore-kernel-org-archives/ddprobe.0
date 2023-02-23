Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5219D10F6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA717C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677120306;
	bh=B+Te6zdTCEe+Sc+F4uk3UOyoTYwdATjf9+QwpgowUXk=;
	h=To:Subject:From:Date:From;
	b=KeGsUN1u5k8a7onw9TkGnwtKNanGZ5hH2fu3N2aHppDR1prwxDs+LSzlUC12nAIb8
	 9N2FJtd+QnhVVfOL1IDMGJllHPcLCsmAVNl17KEiHrI8TFXhR6j5FZZfdSCNKH4eH9
	 hR0fiedzgAArLXNzkxC6kYNWGuMlZzTHjErLU0CR4z/+zInE3p8INJtjAjZ67AsyR3
	 TfuMhS7ASqumZmEhkbcxcZRs70f+DMhX23DAdJpmK/CGip6cWy/B0pdeMicEi96yVZ
	 SA6iYJyy5yb/g+fcfz0Rg48Uhzben8aCliYgK+KNGpUyTwJlU/90knjNnSYzMcZVur
	 jQmgr7nxiQxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FFFC636D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 02:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167712030584.1555.9423851855486502842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d00698151c7273053435921bfc06d54abbbba703a55104ee606fd4445cecafa
Date: Thu, 23 Feb 2023 02:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677120305
