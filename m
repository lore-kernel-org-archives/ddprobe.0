Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E30AE55B
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748336394; cv=none; b=kUwfj3sxA8afp1hvsq2Cwp0GLUsQHl10aOou77AZqYEmTiaJvf1FtLTfYo+w13j7kXWAEI9eTo6dVaDdNauBHJWemFOYEK0XbvuI+nthFpKoWxcQnF1WqMhX0wHYf5mJtOw/Zt5O+xxG5dJ5pYgShTrdKueLUUyxSa6sDkqLLK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748336394; c=relaxed/simple;
	bh=SJSXl/yvsXWes9LAazh7wKcYFOCVSKN+Qb30Ic1IH6g=;
	h=To:Subject:From:Message-Id:Date; b=XkR3tdG9qzP70RioWy2j/MvuswrFRfiAB2q37ihsjSmQr7I+VI9X37yPZhFeRHzGm8SwNnFn/i/4AG64LqTUb08gZniR47mZERx2oIk0HiJO00GM4PjO15Y0OAcLcCG1250/uY7QKE2/SkCrq+nrG+hvL6D7FC7WDg2WFiZLvQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBugYwSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBugYwSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E5AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748336393;
	bh=SJSXl/yvsXWes9LAazh7wKcYFOCVSKN+Qb30Ic1IH6g=;
	h=To:Subject:From:Date:From;
	b=gBugYwSOvDnJRZ7FHnuIdBl2jV9DDBy5OhU8KSNp0tox4M3u34FOvQm6A6pVxtw5F
	 y7LlNILSfEJdJzBoE3+oMUfYiPVUbm8HLLRFpRcFkSmc0YIn7Q793KZp0LLU6EbCxp
	 Z7AMSMaVWGbYANnTyXrwmPL6658ltO2i4fPEu7eb174xQGmX4qLx+4SzVOjCzdz04m
	 UqTAzpaiiPG2Qtf8Mef/zZNoXs4jh8lTQYYl60RzTEuSrfvYwwIhAXz7r/+QZ71LPP
	 tJ00QmJeLTtsdxxrAqv6B7kG13oS28EBYknuhR9zMX1I3q06PC1hZnZ+buwwbeR0Kg
	 6i86mrw5AYM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F789C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833639357.13497.3378941265945735398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372ce3346fa3500ad7dc53c1215a5631add9ef7c80686a6a1b78d71f38c54af5
Date: Tue, 27 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748336393
