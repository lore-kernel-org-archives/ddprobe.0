Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C79C233950
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779976954; cv=none; b=hBNige1eRebkk713jmTSedhkHy6ro6LxUr3aqn5X0rxV9OH4tFJz16XZXsjP0Ae8ESQUtNfNTM8/EKKw3RRCpfPWFtFGD/z/5Kqf5AqIErev0gBp/qHhP3zKepBcRZlM+pnHnLLkdYoQhf7jj2Nv6PPSOPhtQ0Ql5sIdrhAT8wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779976954; c=relaxed/simple;
	bh=L0nOmG+ZaHwXYioc8xdqLLGVC+6JDjFPFCc9YWIwQFo=;
	h=To:Subject:From:Message-Id:Date; b=qhG9/BwCrkMjwPjo3VBZtwmFFXVWR57U3v7mv8oR8e5HcMefiAzYGO3VxmJlgcGwG88D8TJhWGomuh2Pjb7J7Et3tfWaDcG7gZCGh8xVOC166M5C0hDdFRcWcSwYDt7JhJ7Lc9Mkdp8nhinlFVvOfj81FBK0pvhK9bTnMdGYdAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4pWOmTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4pWOmTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09A3C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779976953;
	bh=L0nOmG+ZaHwXYioc8xdqLLGVC+6JDjFPFCc9YWIwQFo=;
	h=To:Subject:From:Date:From;
	b=B4pWOmTUN33iL0wtW1TNPIWJkioHqbRUP9rbTXmnEnJT5RNHiQ3DTV9nzbutmbI/3
	 u9T0V4Oy2/8WEO/9jw+MNuZ2Oy7vouWDXcTuXPTm8qL800sMYSHz19pRRMZf3GPmFw
	 VXUBd4KTKCfxUySIaDBwiD+lNm7smpIL31RhTImV9fCGzUyFiuGg2oWJ1nKOrKlKUc
	 6CB2FhO7AWUpbjikTuiB7Rw8NUtqCIHsM4U1KiF3GeAAvkG0l9LiDeuOYWSsukoNiD
	 EY9Hv3NWAG1ftIE0rh7vc4f9OGi4NDzjQ5XYvaHElmv8tApCs1W1DOERnoxZGvtEBA
	 kIXAEsOIp0nVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C0DCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 14:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997695368.5523.8187766840459747150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ca697eb59e4982287508da6c2e5e69955c6caa17ab10bf3d55a12e47179a05
Date: Thu, 28 May 2026 14:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779976953
