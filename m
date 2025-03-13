Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DF126C03
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741884534; cv=none; b=TjsfBP1nMxzNuDdyIqNxWqdnCowxWIoPKMCexlzJZ+JB6pAliudFwkiQTACe71WKK/+ZI/5j+rOt9e4FJDjyRt4O4Q/gZGx8QpiJkQLAi/G5uRJAU0aRg0dR+2/jJ+JWdsAIowVNJQV9hKCvtnMJo2LcqTGF8NhYpHaHi0pWGIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741884534; c=relaxed/simple;
	bh=LWjMyFk1RJrAb4QIRWq8kuQjCePWHicV5EaC+u9wQcU=;
	h=To:Subject:From:Message-Id:Date; b=krY/JPCPX7iMilk/fhi+wbvQfzxTubbuQHahjKYwgaC8giuk30o0HfVM6j4rLd1xGv+WmTUkn6W2snZC7MlNtDgoDQ7u5tO0l670DuieiEey4qBS5YRA8XVNrSgrqlHG2Gimlax+1JN/KFBxbCNiKjeK1dBoKXe0vMbMqetS/1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd+YF0EF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd+YF0EF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C78C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741884533;
	bh=LWjMyFk1RJrAb4QIRWq8kuQjCePWHicV5EaC+u9wQcU=;
	h=To:Subject:From:Date:From;
	b=Dd+YF0EF3qQGq0SvM3YWNICvmSjjXkLUFoSrH9YmTZQIp41g8HCU/P+t+HAaYKvD3
	 pSRDS28+kK2jqLwHIZw0DfdQf0yXsukTo9N/LLpZXDqFGtz0FoT+NJH5wl/pmc5Us5
	 RrBONGdyQ+qv2zhBaJrDV/BTL0sdwi0Wa3Ft9xDjNjdOsdLY2w034JGpYBuUm+8cSc
	 tdY72qlb5Q1d0c9H1Ffw2i9IwADOMDIKDjXu39xDB02ZfWvXVFjhWBO7rZOlvfek3Y
	 Yge6JnYqiapD/63llAr2gj1IYF6hB065CICNbYDEjj3vuZ9g/QPnR17lWH+cJ+RwSG
	 LC6+SyqVh4Sbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6DC35FF3
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174188453360.31699.7236588135481800716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0805313dae26d19f3548d00d5fc769617828798065dace616fc17757df56833
Date: Thu, 13 Mar 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741884533
