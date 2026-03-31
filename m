Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DA2401496
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774980294; cv=none; b=r4sdtgUJda8obnjPuKXb9phdozTlQhDp7KDr8tVQgkWQi+UpO7J2MYcmX/HwsqPC49uQZqWJr94T7jq510hRLvQ1Sque0cpdx/X55w4M8N+U8NkJnRYEtZQ1YCo4h8ykZPtZYLq2wYgGdOfy9WS0H6HfvZugcPtGKj1iCEuEy30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774980294; c=relaxed/simple;
	bh=ajuILUnJaTUWGhN+9haqo7wFpGhgFo3YIhLFeMDH4FU=;
	h=To:Subject:From:Message-Id:Date; b=kwqxyY2+es6jN9A5Pj02JMCgDCPlvYGMg08pNuSRv1GURuQwND7Kinz9o9GlBPATzJqTDwmVuNrLq33ZVsdSH9atv2SeV92ONvAVPOHMdnDIUHGjVynYx/82vKocgeYA2ihoq6EF7uDjatXZIza+BXflNih3HzLU8HJBQvbdKiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxxYIC8c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxxYIC8c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9995C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774980293;
	bh=ajuILUnJaTUWGhN+9haqo7wFpGhgFo3YIhLFeMDH4FU=;
	h=To:Subject:From:Date:From;
	b=NxxYIC8cI/GqLqa+MJ4arcTHzilbW/ztqvBAEiuWWV9lMvLVE+OV7z+XIlH8kWD0U
	 xCQrffTzf9MnI+ElyKcMM66rltBsdraEd7EWCl8Amo3SlWKKe8AsgkbBqR58qrxECR
	 6vS87e6jawGt2mmpj6Omh04iWgJTEhyugLN6zqCSyYBvIpMJ4y5tl1kHrRgoM25nkd
	 +iYKNPKjFdmh5/dfnXbktpKk0WuA7B2vmjFf7v8mVMcF6nQLBjxzKFiqJ329b99ELw
	 nEJe4vBL0Y7nvemnHZnJZunuBIZu85lEi5uAKXNDPufNN13oGiHQ3Bxm6/kXj8Ni+1
	 rPDZl3TQWcUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587710F92E9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498029360.10462.16798966981791856857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1b39173c7cce39666b7b75cc000cca51f3d5d2fbdb0c6d2acb3ce32064a5b7
Date: Tue, 31 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774980293
