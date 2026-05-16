Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5C51448E0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778924434; cv=none; b=W0oNIL80xgixJ9Q90O5kJ36p9zW0L5T9njUo0w5DIBjJzR3V4BccxOD1+itN9gnTqAIRI6Ucz3//H9RatHs+mVuO0OeOX98HfJeF92ml4ummwk46HyOSag/qgiIyKpJD8LzuOPAbVHvPOXtE4kOqDTClY9UDcovFhb0S+VMdCCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778924434; c=relaxed/simple;
	bh=ekl8xn8QpOEVFVra+3itRGX4fMwUdjqG3WmxWoNPhZ4=;
	h=To:Subject:From:Message-Id:Date; b=fmWyyCDHnHdl5MV2S2SZ2qRYh0foJvmcLO0N5Nf0rF4CL+vdBGBuOy/uZmXE+YJR6I4ANHYFGGLxpOXMOUfwMhVDVckijsU4ytX5U7SrJ8m/TDpsyBm/G1PVxYCr9gY9ZEJdAQSO/zw6yr6FTfy5CIFTsupzwg7D0QSh3a7tRyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSin2IOa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSin2IOa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E12C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778924433;
	bh=ekl8xn8QpOEVFVra+3itRGX4fMwUdjqG3WmxWoNPhZ4=;
	h=To:Subject:From:Date:From;
	b=KSin2IOaYJPde0t+KqSbDV8BsLOukigm+DYo/KPpYIfBacO0pWVqg85IFAY793qEQ
	 ZcPibfcnY1insyMRMLVwJs7SxQuDPOn6q4MMnfygYBCn7zsZ/GlrUAmLlpDgzejObl
	 2F6gsao8OeKNk/t0Run4c5V4K9+ySUeKWH/cKQmmTqEDcT5uc8fr8F+oJW/fTb5a3S
	 oXiqWgLzlFxLD+Z+r0dpLM0UWtJUYZc3bN02/fAQdg4LT3jqWog7o4XDFBpQ3CG5TE
	 N39Bv4+a4HA4AUVdOaqFOXyAIyJe7X0c71Dvxg7yO16aoEaVxhLeil2bLPlMyUiSAj
	 jd4ZMieh533cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC786CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892443369.32749.14942685137789717847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eac4fe5645caffea052c685685a59374f0b4c2dc913d809578ac079249a951b
Date: Sat, 16 May 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778924433
