Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AFF1F666B
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741079934; cv=none; b=h+5OGj/w/ObKaactltlCdxl9+BGsKlv1dXuro1/cX+pM51l2OC6vScZ6oUuYLiGkzpi3/jcLcbguCgTXe3OG6wWT4KrIHdDL6TW49sZALaTatOs6UyN6ztKS/ik+dL8fUVjnRr8p5F1l66JssFR+hYf+iyRqxmdnCk5Xrs6fLlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741079934; c=relaxed/simple;
	bh=kTUA8K0FPG5SL1sB2thiV3UiFj2Ws51+Tp3rPwiaFYE=;
	h=To:Subject:From:Message-Id:Date; b=Yr1zXY2xi1txDeCu97a8poGmr/skdLzAYVQGPFJg4vFCkC5yxpowob0sCTl0P89DfJImU/ksc1LOrkULsoEq0HpkTqlIXbXAzhJAGSezBtx5iAYdARx/pBnahEBoEjbq/N2QnfWHAZn0/HjLU4vCF+tvuOJ4U5sdZgJZ/5zlp7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgBfZmDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgBfZmDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD47AC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741079933;
	bh=kTUA8K0FPG5SL1sB2thiV3UiFj2Ws51+Tp3rPwiaFYE=;
	h=To:Subject:From:Date:From;
	b=lgBfZmDT/kM2CPq+1zYMxkGPEtlgbAfx79os9pziLyOcH8BuI9vGEzS3nvUyGeBfx
	 unQQkRwfhG7NWF2BNIfOnYoe4sbDH2arPzLsDu0DZBsyYYPiuMBvIA472p5S6kc8ZD
	 ePqJUh9RAfujf3U2azfOBH+omRZfhUzMJWMAsdobjc3wg7qN9N9sPW5j0YlQ7YCkE4
	 eDA+a7HoOyvWlr4uqPQpMvO3V1Iefl3E+OMViz2xGto9qKMb74M5p37rWajpI7CvbB
	 +85wIE7sz9h1jHNI5RWJG7T0VKtzj7XozdC+H2cRu4BtBx3b/253WEVqeB34zM9NDk
	 7bUvxsQreOkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B241C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107993362.5982.13698820419730266950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bedf7b6c319a032dfce93cf28a5cc757cfce04a8300f8614fc61498cfeff7c34
Date: Tue, 04 Mar 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741079933
