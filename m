Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DE928E7
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE21C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674227525;
	bh=DR1U8C94IrS5io0MDGCN2VW2Ib7OnfSYPvppYJJabQQ=;
	h=To:Subject:From:Date:From;
	b=XLq4rxhwjqzcXgK8oX8xuTSdwrt3qXAHhDFCk8s6+7ChdMK1SN3H+s5uLVjSETcF6
	 3DYVliwhyQ/2+zIUOi5dLRHrEwBAHdEdyC6ZnB1SDWh6TmzpGjL61YoC8qBlUHACv9
	 2tWMVnbfB14O+LEak14QvMpsS5lszSlGDWRzploNnbKHFYxxPt7DRr+VR0TLfhvsN8
	 R0r/ubR7H3521fdXdLPBunth33mPzBE6O+S04jVACPpLx3EzyJSrf9HI9EbEq/l4tJ
	 61cZIqSFnAYSyoJtzt2daV0jrl0nUju9fhuepREPtAJrLDxZ5PGF7wH66iWiqHhMDd
	 UmnYFlzcIioNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD540C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167422752576.28450.12137506249224846646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8be509180080b134d52c7d88edcec23836bb1c063bdde681b96e9bc7aaf7839
Date: Fri, 20 Jan 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674227525
