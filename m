Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7DE188
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBVCFeYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B03C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696723628;
	bh=XJLrJOpzak2B9QydY7dQMoRXscLKTfKe9fOJ+esoFbI=;
	h=To:Subject:From:Date:From;
	b=PBVCFeYJc6nSGnXvISApMNi8FhMIsOMxjbwaoDRHiGeMOL7V9yYEdt26sl64ggeep
	 m/LugOChqs490VSJZb8cr34Ey9Cudv/z3kEhWTGws9oyJcegpvpogg+ZV4qxw6dzLq
	 ggxlZu71IJMG0jcu2lEOuG4cMFlvxIc1hWxZIzyhtwP0m8Cqe/wmqU+bf/+XgiL6z/
	 gRSXprwpsyDZy7jP2WxL4x4AqqaJXS3EZZmBxbxGaDirdQoi7w4TfBu+/LIfyuqddx
	 ZYz6/f1Fp+i6PQ1XpPmghwK4YdzNgMIvChz/oDK8K+Q5FbPN1jSjZhaAG9nZQG9GQL
	 NAq2M0QiovvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD4E95A67
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672362868.6608.7093045733450375625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f1a661be43cc511b2e1ce785dd2bce02bf38fbb4dfd4240b1366240e82627a7
Date: Sun, 08 Oct 2023 00:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696723628
