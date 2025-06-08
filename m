Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16723267B65
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749426594; cv=none; b=J25w2XqO7jXN2frFQFjE6gIXqKtc/R++7W27Z7229mWivfCuPFoNWkROnSlIUrLShVAs87LASt/SFO4fRR3IbZ46vn2LAK4t8A9rSGtvsOWEJ12eV7NKraFVFQVdvlW+j5PI/VyRlToUeD1tD3w70iORZqKot5RNmoF4s2U6IuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749426594; c=relaxed/simple;
	bh=Pn+hYQeS4/QgBClA2bD4m2O7j9gVFlGJ3zQjdCd8H7A=;
	h=To:Subject:From:Message-Id:Date; b=TsSM5e4EIAAMsFt77xOdCe+mVdcgmYkftbu8klGYBIt+L3xbDE6qAwpKv40qcTVbTjB3n76nDhGG1CQMp+Fb+efMNmgx6Lf+SnqspNHD9wp6F77VUNUvPGoPvTLuSYYqwaE3aBjaU+5cGfQ0BsiTM02MNuA04KY/lEJTOXThE+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3+4q1rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3+4q1rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDEEC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749426593;
	bh=Pn+hYQeS4/QgBClA2bD4m2O7j9gVFlGJ3zQjdCd8H7A=;
	h=To:Subject:From:Date:From;
	b=n3+4q1rQsdwA19g/xvgeUiqX5u+Skpex5u91laywXkR/zA91hWw/iIhbVwb3ssfAT
	 /orcxrIzsq4SUJNLlnVnu8PxROwCKghLHtQF5aY/uyLWo6AHrNaHSZ8FUNGhZMnizK
	 B/6BUIal0Lg7LL1f0AubdKsDaWs0hvVlKGDqhGVl6lttW4TFMgXt/wrpetRV7TY2kR
	 XKgsaYJPP/zBx2uJ4cv9Q6h1KMApjyqHW6OTnHkNdQQi6NuFvMFlZAr4tjADG68brj
	 lpARyWnL/iDjWK9/PYFbvbFP4ZAQt7sNCEEGd208QFCy1+kSvz+Bj3GUrPP+FYudZ3
	 NcEA8HqlAL92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9C0C61CE7
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942659357.5861.15091285891145778401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1beffedde915fb1879fd482db6865dc3a5ab8ab0144c38d649d2aa97afa681df
Date: Sun, 08 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749426593
