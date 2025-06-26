Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432353C2F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750939794; cv=none; b=BvrnY3Znf12ngrohuRJN19Aqa9t+ydXteBswsZRUZdlWrxMHCcZCs7AE+0XuD2hNILKZ991JG5qD9DoqkpFnCSrrc4M0XRVa1dC45vjpHzQZuovhzkmxR/AAXEQ3mJH0jWACUL+dwwhZ+hPY2vGcNYHsli8UMPh9gUPDm3eD+TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750939794; c=relaxed/simple;
	bh=SCajqvn3dpwZXHhphKzNwnAI6AWHh1gtoO7YlFan8GY=;
	h=To:Subject:From:Message-Id:Date; b=iC4l8eRNurH0s9Ag9C3Za73kQxwXZ+ihbMgHj882STIN3QCMWxUW1Pq1Vmp5UlBZc8KuK+BhVNJapJhaXtfH1USkuvjYBxyiCkdIxZgk7vBmRrDVhfc4YQ1GQpH/bfZ7hEsYiIiJ1wJxKqpjDRmjnsbCmjzqUnM6u+yuc2K8k14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ek9X0cqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ek9X0cqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E2FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750939793;
	bh=SCajqvn3dpwZXHhphKzNwnAI6AWHh1gtoO7YlFan8GY=;
	h=To:Subject:From:Date:From;
	b=Ek9X0cqO1BHuPtwvmTh/Y+GJH7ET0eNYDW56aQRwL10CmNDnh2WMVlqmlHRHOoQ7k
	 1W690qiOsSZ3M48q6LL+I99P48ug2UTKitIIioYr7k69gC4oKW96RmSiwweDi+FStM
	 GbHeg3GoaEpydG+j9zDl3qn33N9NhzZNr1O3o9QgLm68ovDc+w0u/b1GU1nDoeGCCR
	 Ku6OcgAgITzz55yvm12V69nUBAvHv5x43pFQQ8+y2Px6tNRnOUC6/gao1P5H2cPGcZ
	 mS1poT4ye4OZjKw9mKiQxvtoq4vEqry0eO7/bqQMShO44K+egKlP3mX16xatMwyp/F
	 8+fwTAr6JuDAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4102C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175093979370.32003.14279066772936309953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14507db0f021fd51e37f16a601612a3669fcf732f1528272c083991fd430d4a
Date: Thu, 26 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750939793
