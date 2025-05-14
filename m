Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD2B253958
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747228795; cv=none; b=T0k8u9Rlvg/L5JFlcHlNDbWZ5csHhtBGhuuVcavvHo0HXyFy0sMpeSZ8a1DZb4/vyXyo3r1Y01O1bx8TUSFaVyIUceO5trM3v3cA74oqddQ9nyL+1yIKWPw6FsoRyNirrte/GXhE6BD6p3w9+IkkphubvVGLMvqYiP/ASR3Vk8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747228795; c=relaxed/simple;
	bh=vuV+A0TplMK+qh7m1yxYUzx15KT/wND3zxb28qYhuMo=;
	h=To:Subject:From:Message-Id:Date; b=pEmEnIT9RA2upebcoP/N4a2WFJsG4LosDXIfzBZz75YrDatUkV5wKEgNnajoZFeXjEbZpAV5RacWvjvHPnwsvLFvu+yJPAfQONkP7NSC/etMc8aH1esoinGMuqAsqL4P86tu8uJI0xRNNZ+l5MQAWDtF7HznVXlAyb1Ldh3xjE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvEX7Iw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvEX7Iw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68ECC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747228793;
	bh=vuV+A0TplMK+qh7m1yxYUzx15KT/wND3zxb28qYhuMo=;
	h=To:Subject:From:Date:From;
	b=RvEX7Iw+n6s9xGmAO72EF+Uz/9cJVcB0NxIrSoRY7QEwIzrEXz9TGWGJAA4vLJhkC
	 XC2yDxp5zikDLyYXr7zxRJ5r8x0QZfshHq/IVuuNz9N/tKzI/rTeoc+LLNSzdPYxJ0
	 Lk7uxXvHp0mZkuLIFdtO0rWv6aFx6W9zR3drH2rzIA2PfjpmUA7fRNDbgUsPOdXK0Z
	 IHxj343mEiNcXdNZbZeyBUcm8SleEPOSgB/yVwb4BHJVdioTDxfIqjPSVhVX/4iQnX
	 l1LDFPRm1juNsdqK8b4QpTxUSO/mC3u48jwOAAW8ROHMEU6tlkhpRvsUGqPaagtEbt
	 qclFnxZrz4kWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968A1C3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722879360.9237.16968655781142280066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3bae323814a622ac44f8eb8d29e29e84a412966a637879c78951ace75ccfd95
Date: Wed, 14 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747228793
