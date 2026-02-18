Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1006D286D57
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771417494; cv=none; b=sIOCzFKf589QBEjqGvAm6FiesKmaWYiK1TRJKW5b700URcmTpYaCrb1vllx/ywhf0EWb9Sekk9OjyeS9UKZr0Nodc37jPcHn/PTxyxasGp0h0sLG4i2p5KVNci7GtEBONDk+M6slsEh47XcKPDp2eFprLeLwNCgbyR/G4YP/X8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771417494; c=relaxed/simple;
	bh=R8v2b4Y6CxUfAuAvABgYAZ2BhKmLr0Po8x7THPaRcaI=;
	h=To:Subject:From:Message-Id:Date; b=U6yDVzIg4ENqnJvzJrOTZWcZC6kv2611S4aO8L3s18IWO5DZpoTOwPtzAb4NUZ1dSahYkHZbTozFbtAaKMqdBsZObwY7QvjptOUNJNA+WMeEqPdEx8/EfDVk5yoO7hSUcKsUD6T4o6j4cc6lv+eQ2lPqUs/tVEd/2WJB5sY8dr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxqdCLeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxqdCLeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C18C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771417493;
	bh=R8v2b4Y6CxUfAuAvABgYAZ2BhKmLr0Po8x7THPaRcaI=;
	h=To:Subject:From:Date:From;
	b=YxqdCLeB45aIvMUWk1+oWWNuvyeS1Jm5RmvoANFddUabWMdqueTmu5ckufklYcMU4
	 eDFyqeXHz2pTTjyBBckdCapzz1pggUKRFbsDXlDLtQ4YJ/WtRIcQzRzASb40atYOG/
	 +EeMd6EgioR5v/djXp+X3iqNJ0Qqobm3fLb31Pwm1WhHixyMoMgL/OcpOuICk8QGVf
	 x1l9A2xjDu0xE+GWjsMjmkiQ65Xi82HxOgAU60EF40CRrCLY+pWDX12VQiGxHNFBDp
	 YYCIwkx18VcieSbnPazrS+x3RsbjqkN+RH2UeQFh+ahvhrDOZL1BqbAWxIzBZXrM4k
	 Y+FfCZmAlgdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977DEE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141749360.22092.17339098970224864951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c082173dd76871bc8de7e747669bf425efb18273341663cc5c29c52c242e8f4f
Date: Wed, 18 Feb 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771417493
