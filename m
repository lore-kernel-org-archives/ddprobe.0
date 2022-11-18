Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11D429B2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D40AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668765054;
	bh=JJnGBUVg6c8J5SpKsHvDQz/biCBQasFRDKd91X6wL5I=;
	h=To:Subject:From:Date:From;
	b=KU/zpLS2RB3VnCWe97l5H+HmAKGdfdwgO3tOemiCRPwdyP7/Knz5Fwkt43uzlYPmL
	 HyepjlVdWobzJHgESVcsLLeStlLjC22ffBashVZzdFSTIpa+gM7Bs407kZK0CiVK0C
	 Ybwy9BxU/43uX9iy/3WF6UrVoHm8AT3h8MdJJwEI4BMUJqqnxFQRqQbAAjUWY1YJCk
	 PVDJFsUPsaAYzeuW76k232wJtgIjOByp5TagoT8BT2RWCUdU1I6GFPGfWe3wBz8/fU
	 Cxg/RPkttXzEfWOWF/YpNGGLGrLLWxvv09piHWWgtMskPoNstBGxisV6m5W2Ex7QFW
	 AtT5vrX8PKecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524BCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876505432.17659.8206798531527868077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a14a6f501c762e64b03b7b8cf0fa1d923cf081c4adef1ef61f0df7605e971032
Date: Fri, 18 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668765054
