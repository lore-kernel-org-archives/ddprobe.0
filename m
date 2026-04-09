Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F89175A81
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775738794; cv=none; b=k+7rDPLzwf2jJDqnZIxGeM0KHvkrHYeHBZNqeparR8DHoZzmMosJPaEUyt7WyWgGu7psBhqWThfRLbSBys4ZuYkmFEQneNTBr4T1jc8iizbkAZch4g2bI4VuXBc+r0phXgyVefZsyFFktzLu1jzSf+llgmqnEMDjtrvdg/+AGoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775738794; c=relaxed/simple;
	bh=fKDZUleZ+ccKWNvBjoQ3846aNYVzCcAUJ2wOwNA603s=;
	h=To:Subject:From:Message-Id:Date; b=l+foTo8zg5mlS7d4b7ZubnXRAZ+jK38zX9E66y5nJIAZHad+2ly6BImXxQYNfI3S2u3W2H7XAO4wu+sxmABTVYk77r04XnJj7zt0TZAmfQXZQdbEBPYBM38Mt5kIyAwDzvNvBGsfrk9/eB44IOMDQV1TiVAU4PJl087V7eD+QB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKzdZ6Ez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKzdZ6Ez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16FCCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775738794;
	bh=fKDZUleZ+ccKWNvBjoQ3846aNYVzCcAUJ2wOwNA603s=;
	h=To:Subject:From:Date:From;
	b=PKzdZ6EzFjj33p53FYNsFu/9sq4kcJFp6KJQXqk0gO1WMtNPMBk8AyffuIjYF5+qk
	 2lTddjfYAfJdg2wxV9ivPxM9QMPLBRIHe9IZ6mEgm5lS5QoJGwY2AFNfT5mzHS+pqn
	 Y9ZzcInbz6ORFjkX02q0FN/WbH72GGsXzj1gjulRrHFbZ3Rb8/j5ymOMJd0lYsQT4b
	 Y3gagGWr78mG1Yj3oWU93A6kWPR0eytP0Rk/Se/nxRqo0Mcogg6w96ZVfIFUbKRnOQ
	 tOGHVhASaWwhjr8QEQO4pMlqGFANAuNcgOK9vD8e19e5KkvMu9ywBb7NPvmT2YoGVw
	 1N7n7h0htdYhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9D66EA3C59
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573879386.23955.15890817991442268136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 761e9685ad5796a31ca7944c0bd06a4172bab8d8d87dcbe91c01cc2c28d41b6a
Date: Thu, 09 Apr 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775738793
