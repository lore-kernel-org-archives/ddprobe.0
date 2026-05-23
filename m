Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A38B7081A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779514354; cv=none; b=uP6CJZwdMl1v63Z7cQwlNaESe0hFH3SXlOzF5c/jfjo5D+O40XXMyIkukXBxQQv3HvpTwSr1S49yRaio3N9V8JtrmEtSWoKmZiBe+hbUvZAuQSyA5cKbJhIzQZ/ZoAIJWuGjOq2yvaKjYMpUl3Sy4GOctgyc1X+z/QWUNX3F/BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779514354; c=relaxed/simple;
	bh=ZZiSpDvvH+JUHbTqsxr0peOB4eImwxYIySuwsokHWiU=;
	h=To:Subject:From:Message-Id:Date; b=hWdqJIXnezJrG4IShBDeTxRGjZznFgWtVdVENfe4uVeeFbgt3qGx8q0D8OMK2L8jfbDEf+SH6+lnaUepwU7sL2ORSTlvPqRnUvp5Ul5HQYFLm8Ut3fiq/JPZb6U/E5yzCzAk0I0bkLWW4a5HERUr9x0TdLMVddTrrYy1pJETNJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pE52cYab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pE52cYab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1F5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779514353;
	bh=ZZiSpDvvH+JUHbTqsxr0peOB4eImwxYIySuwsokHWiU=;
	h=To:Subject:From:Date:From;
	b=pE52cYabLVSaKXsMOQoFBzLqQwgRLFBRaMiMQ15X3zwYnSkzHrNtnqil0m4WIPX/u
	 3nGHeXQn7hl5vjx54XnRlnVFX7GwleUoX79o144HqbYb9AWQABFUJN0iPpGrdgI+2E
	 ukSEA2HKnLccstURFez7JiUxDo+ya1DQr0YMpybGHvpisv3fcoNNQWoj13j73JjgiI
	 hpe/+RVq1Jl/ruxOh6rSHW4iqkC4c7iZCiDSv/TgVp1eFb7c/1XdVjW5tNVRg0886q
	 rhbXwn6B7B47HS1c/zsnWtPPt8k6Y1ft22iI+7r/TwXBHE9vNnUMjZCop8f58XElo0
	 PjS2MEmC2eNjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE674CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951435368.2991.10446840473108282586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee67f73d294b1148ee27555da824b2d6c1ba63c1f23aecf3cf691c2d25d4f2b
Date: Sat, 23 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779514353
