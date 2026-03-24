Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09E234C9B7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774383894; cv=none; b=ZsadM2hdw7RkLkQiWOMLLiNggQ2BTundkHHEir1mxZYwFaoFFPW3Hzr+8quVd3Py3ptS31A6YlRlzXAXkAfIXDdBc4DOF3jTEnfOiDrvdLkRo2m+bfCo1KYnGYdet27nexRv6XQMWfj/+ycsuCg9Sas22ieeJjbP/Vco4pAuPDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774383894; c=relaxed/simple;
	bh=rrzqhn6uELvSvWg8uCAPWHmtvw4OOWJOHEJFNBvT5Qg=;
	h=To:Subject:From:Message-Id:Date; b=izPTgkvyToIEoBCPpZ4wkz02zZQ0O+kJF7M1KkBA1FFlmN5ifRu1eiz4P8VxgMVVMCKz0Cycbntfkr1VVRWENKf8lwP9HASTvezH7daZLWeqLbFa07x7mguIZEO058SP1MEJZViIqxhziI0QrThMlTiDbodq5M/8rX0PYF5WGLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL1sWEP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL1sWEP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90E4C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774383893;
	bh=rrzqhn6uELvSvWg8uCAPWHmtvw4OOWJOHEJFNBvT5Qg=;
	h=To:Subject:From:Date:From;
	b=WL1sWEP99stOHIocgeLXsYUAkPBoXpCMlqr91YXAe8I6zF4OUXe4R/EjpDhhW7bCU
	 8dos8ysIHrW514d9GMFRw8qbbYFMJzKEH/ETtD/Hn4prDs2bNHgdJsNyH8G6F3Eu2u
	 kUC3sMkr+JqgzuPdsLSiou6u7+GhcO6gtBydsrhMqlzGAGs0Yqyc21biNxr7Pz1H/m
	 qCWn2jOvheAiiFdQkGcU6DWJy5utbOvDLFCNIY6EkaaciGwDUJHktfKFiBgt/vWKm9
	 vMgU82WpDXbpOHEt2Dh0hTbrrbzuWCdtY10OdELwOhNJwfvJ0x9NVJXfYYTZ3IQHh4
	 H5Yj3Rly/qhwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B56FEC0FC
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438389364.16286.13962763333405775535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53b072c8a670bc25109890dacaba5adfa375dee1b1c66fc4eba5398ec2034c3d
Date: Tue, 24 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774383893
