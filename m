Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0983C7DF0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779444754; cv=none; b=WzvZppJzjl9oq7LqXlFB6Pmu2VI2iLMwzznn+1h1fOdyQosSNX7yq6YDhnsQSTrokfx4dG2jCiZINKqFviZnoHcqU8Mgaik9n9Y0bllujXFNGXvJLcl74p3JA+IAOitJa6SqFYGKeQtGgUSpsStfAWoxeP2Gt7CRlJADEYtNaq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779444754; c=relaxed/simple;
	bh=hEs1AVPGeuOBJxHlU/z1zeEJYkuWJS4OLLF+VDTcZ8Y=;
	h=To:Subject:From:Message-Id:Date; b=i7/4EG9BLTrljBIn9PMIbqOTYQOkMWKIve5nsRL3tb0Z6MbBGfQO5/WwZWQm7XCtDn81xI7XYY0Z2lZ8Sr15k6oAGoowHN7CqoM+nWkjOxwT1rHVnoxQnQwQwrArhhohugHLvjh+nAp6y9Mqca+ufR/RsSXQFrf6s0ucWGDY6Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T33Zauy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T33Zauy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9375C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779444753;
	bh=hEs1AVPGeuOBJxHlU/z1zeEJYkuWJS4OLLF+VDTcZ8Y=;
	h=To:Subject:From:Date:From;
	b=T33Zauy+wm+7UqcxDTCElhcIbqoHn7osSmP2vNAMr1bRNY4Pa2zmajGxv/QSZy9lq
	 RAkAKAsM200dU5qw3b4NyozkYgqEaHVFExf8fv3+YwxTAiw2W2isX2Ik+8uSvKYW5R
	 2dBllj/WCQjFq7V3pBFEtxTSVpq46n3EdNdzvo1QI9JVJCn1jmADvmpg/LL/7ZYM13
	 tK9+G7gWg3iZFbvHX79nq06gMfEAYlR5KIcn4p9x+DeMYT39urHyfGdBsBsaFpyXsC
	 yTqIYTprBaZUzETf9TYUVsNydpHJSeG+NatupxRga2q3xEnXKXMSbgIWogGweN9u9i
	 qHJ1zxJw4jlaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D11CD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 10:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944475368.5490.38482888152373139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9397b272c727cb581de11056caf4ece985c22c76905a0f9830b6c392761512de
Date: Fri, 22 May 2026 10:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779444753
