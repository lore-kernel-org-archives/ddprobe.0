Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06FC7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AC3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662882653;
	bh=iFYAa1uG3J+8eNnwK5irXlcaGzz1uzkmJMTio8Cmu0s=;
	h=To:Subject:From:Date:From;
	b=XPYQ8LmtsSAlTQOXSaaFp96wVk9F00HqIwlQoBnYmVJysRU27WSh44syH52UA/F6W
	 ag9oW6hJKLsxLxk/Cw1bnU8174om/+yqDV9/w9+R5rFK75U1vGCGgv2pfu/YTMdQVB
	 56D7EKwoYiEEbHFp23JKAmfPRMCdPgI+TQb8P+v4UvA1gdHIGrIbzmcfL/vEHLhK+w
	 7uFGQ8b7fgpo/PXLIx9egCbdcIPLxOqOZK8OYDgYRk4vOmpEqq2QFkBiNPzwlJXG/Z
	 r10wsk3+q5hDjomDvgTmElumYJk4QG6R/gPlDKHqFlHR642SyOgR+G9cB7PBiZQPNz
	 o0utbDYd2NbRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC78ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288265331.31338.3871789820957439290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5291a9f0cd7d8c555772b7d5f8c1818daa75916ae63c4e5e7802b54ecf2eeb
Date: Sun, 11 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662882653
