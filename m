Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6844642D
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741322934; cv=none; b=QW3RD7/94AvhBvoLFVQOZQmhMS6YoNdbtzCxMAmqNr/jm/kn+VJf/dNKuXPfgeCuY0VDwg2TLGZs5YOcDfJOpyzi4EtvnVaQCq+2m60J5EXa7Nvvo5kD8s9gafcUAMNsPX09x+945aKS5RB39VcxsTxbJQOEuUfB3/j6a45+ZAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741322934; c=relaxed/simple;
	bh=k8W9x36rQVN4HSDJWPEZ9s8JjIRiRtbkgzDpI5g5neg=;
	h=To:Subject:From:Message-Id:Date; b=W+0+Ob0FTXNi0tPmlUeShb9aNpAMjDSgXiSCG2v8xAsWwh1QK23G/jagZUC2el61UxqWfK/cA1hfG0qBR98mBanqk+DO/HpPjD+QEyzkeCljgtD7Rzqwb9pyq7152iAIkEuzq1swwNz7qv9aseVf5rX1r+B3sKFQj6Asy5S5sHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtJMtFWM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtJMtFWM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B35C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741322933;
	bh=k8W9x36rQVN4HSDJWPEZ9s8JjIRiRtbkgzDpI5g5neg=;
	h=To:Subject:From:Date:From;
	b=LtJMtFWMJIQPafCD32sVbG7hBK2CD9ZY0OYEeLkv7JVR0P87J82qSDk5D/MCTpQsC
	 s+h7ZnydNQ2RDaOYhbS0n2fBk5mmJQZZ2sh4ChORDoNWHiMVaJL+zFGgEQNnbyxy50
	 R6783F6zFzQn/GeAJv7RDyfMe+wsi2pmXMG6E6ViDVgYes9aIe/LkxF3gr7tl34RK7
	 dY3INjG8dYaVAZKa+U02V0YIcMrFzX8ysQTtM/xtQOIlcfW2gzUm7sOSvw9JOxJyyA
	 KYuS2EFWBiOEl4fmx3rAquc/vphLx/9BF91n5pRn0memUdD7Y1o89+kvMw+kbje11f
	 Yg2hVfvo9eQ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B60AC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 04:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132293362.16836.581565065355430651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336d284b0ef221a467e37c053ddd759815528f7ac67f6c778951577728ff44b7
Date: Fri, 07 Mar 2025 04:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741322933
