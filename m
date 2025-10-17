Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F214A23A98E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760687394; cv=none; b=M5dyHAEHqBRWZW2Esc1Q4dfL9BSEmuNZxlYiT7P9Vo0rar2OH5qjgGdkWEulPU3YqZOoHpJ52+9PRec5z/glvOGTGh5QW8OUPSr5piqYmk03oUvNQgCfX6Jj+G3HpTlooEKtEDtZ5jBNrl98rG0v4nw+goIgaor8eGDEsdxc2kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760687394; c=relaxed/simple;
	bh=XJEdAf6dAMBj9NWLw2ES1Yey62qTMvGPADsUYFYtYLQ=;
	h=To:Subject:From:Message-Id:Date; b=gTkJCVh1so5v/dc0MrGLl6QfuIZgRJJ/H6X/H/pPU+yZB45+kVbZa5xxgY8HjLlYplncS4l3tIYrS5etga5gwx+G31+IGDZjGurB2iSJjG36rFw51dPkeo5gJO1sAsKVnHtmzTkwA9jQnC7TR6ld91m4Z9OR6IubgYzK11vuirc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NolHtC+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NolHtC+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A767DC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760687393;
	bh=XJEdAf6dAMBj9NWLw2ES1Yey62qTMvGPADsUYFYtYLQ=;
	h=To:Subject:From:Date:From;
	b=NolHtC+Npqo0l0dtcAVDJa7tFICDjdS1PnXS5ACVE8gI0+djja6NO4eN1GJx4MVIx
	 X2uEUPOUy7JF36lbCDK7i7fc6uOfG4gFQzCN6OXEmczkhTLEp68LAzWLRJA7laRyxN
	 x4CRGVPEn9Edeb00U3EIw/P41OfpaCvgLeV/wyiWoVzsd8dojqimqm1liEM4iuJNH+
	 KQRupwroFg/ruNmTfYUOBJ5/5NEwEcb/6c2ZDqT3jyNbzXCFg8lPiDsPq0g7xCGpXN
	 IDEFRN4uwt3b5CfarNmejePCnwiGouFbbTlAbC087wt5K7P9lE55zRWYbHGKHN2qCN
	 Ef/ieqSQWNllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92056CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068739357.19625.17666059629886243257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04b2d5889ae23638dfede9423ee2a7449dac4e64e733637df893c8467f882b63
Date: Fri, 17 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760687393
