Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331591DF247
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738933554; cv=none; b=ksjSZbHdmnM8X8/TWFx2iJELjhGVJk4Z3heV08gRCt8dN/uJsCbup+cjWWXh9eQGeM6o489E+YvBcY9WNYY6lOuNnASjgfBBOK1lkgvhkPuQd8c3BrfpmLaIjMarQLNtlMUXZb91/aIQtaG9fju7YCQO1O/PXscNSJ27EXba2ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738933554; c=relaxed/simple;
	bh=XI/S+VPgFu27b0ZxSw4jtTkXb/2cIH2pBDVk6u3VEyo=;
	h=To:Subject:From:Message-Id:Date; b=B11y+lx6OmpUbUCzCmhZexuuRx1XpLgu52vym2rrsawAbmG6AJQ+5NzxgPtYtpURyStVhOAJGoBwiWze4NLQWSbletlA7yffz9QDjKlUGTVY4KN6vav3mO+15IdtcYMbAr7Iw7UJYRynCziMUz9D1HrLFNGLuq5zvJzirQ3JtNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6U5gITk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6U5gITk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A8C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738933553;
	bh=XI/S+VPgFu27b0ZxSw4jtTkXb/2cIH2pBDVk6u3VEyo=;
	h=To:Subject:From:Date:From;
	b=u6U5gITkiZVmyUWDb7/aGbdR+dY1JWvxhpBdkMEhuI/UZmyeY/GnRti0f1KOJUYR7
	 hVERWiXcR9DKQmMpI0fO+n+Zr3x8/bdmo1uyOnUrCBPQMzVjoGTTo5y/2d9fyb/T3o
	 GnYzrDEDLVhlzbDkoo/pK6FGrVtzLnrHFaBwuY/K1xTdep3tcYyMeX3O0uZnUXH0Ww
	 i/qNGXm42US2jxu+aW/nQzygfJhsp5iMm5g6s/lhO3F0liIohtRwaR3x504ZPn03cU
	 TcBddspofNq1okhlMRcY9lXmo/VQ5UwdW5662+Oq68j4YwV9qI6ZL2qZ0OjSMpJ6k6
	 CIxZDta7CBJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B34C02199
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893355359.28832.14665076676787601569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca55ba199de1443043adc497f4080c339d97ab6a19bae0ede44ac111e601502b
Date: Fri, 07 Feb 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738933553
