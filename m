Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B549461
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734461154; cv=none; b=I4jlHOrknGGbijTG8EuKRZZAtwaga6uBpgp4uGzn0UgjPXYYPP1GwIjivLg6cqqIQXZmntkV+kCodEqePJZ8tWemKa2toOMiJm//A2+preyrW8jOphG9v54px8h6jbpDvvX4Eho1hlBu1V6hJSGU6S5I/ovuq/MWIVoF3SG5iFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734461154; c=relaxed/simple;
	bh=68TH5VklAvB2Lrg82bvkbm39Wcp62w4qHPXJJ/R7hGk=;
	h=To:Subject:From:Message-Id:Date; b=XN1Gft9N5PZaNJ98EUa3nrod1PCmYbEsPuWYBezeZMLY4lf5DABLpLpbjCFh/LjvI+DOl3VpvxtAzpFV91xuPbG0LMQgIPfYkRK5EGLNguYz7bpjll24DDRkMOoFZ8hlzpNLXXbsE25PRN5bOxxl/mzjF03fUswf3Z7ipFItY+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyT0U2z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyT0U2z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8375C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734461153;
	bh=68TH5VklAvB2Lrg82bvkbm39Wcp62w4qHPXJJ/R7hGk=;
	h=To:Subject:From:Date:From;
	b=SyT0U2z6eml2ZidiclhPJl03u+MCChImC5v7v2PSR9USpwqrEBZwsvSoqN2fH5qzo
	 w1wMGLnc7gTbq9xqi44o/Ol6YmeD+6jMeYG1sAAsBZ8nvmC3hXb6E/ngCiRFpgYM+d
	 JiS0BlxUryLgH/bu9l9jREGX6nuaa4kHaPv+Vdia90dn3lVyYj9nnDUCG1pGlQc9uA
	 lUX2bxUjvBdF6wq+tQfWa4nwJYXPsvO02L6MKRgy6nNMxnIvtYY7nX4qJqUOi9gdMw
	 tuXLyADi+/D9N6KjbbNLgC0mJxIQWwisq+1IKIpZ0tywsv3QYQFqrSLXvCEl+OEjYR
	 j+08Yeu/hL7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D3BE7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446115359.10910.12818062880229995173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9469c81799d4d30cb73da0ec861797256aa87d13486a32bbecb9ce44a763e176
Date: Tue, 17 Dec 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734461153
