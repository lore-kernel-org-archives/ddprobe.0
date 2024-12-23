Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EBD194AC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734992754; cv=none; b=dyHRSx/5xDPVzwRKQemXhsjtw0NR9VgMsaCRzPelnSB+a3Tp1fDS7zaMiyF8AJQNCe5omvndVekC2st5TdCV+iDilxji64C0Kwu2IQpAdWLsW+ikoR28aPMSy7AwEHbrEXgcd9lqqAwWMrO6M1lGi7l2/TPod0TN5EZwJJnGsxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734992754; c=relaxed/simple;
	bh=tsJaACv2PYN6C3WnweQmGoXngAen0rn+gjXYO5eIa+A=;
	h=To:Subject:From:Message-Id:Date; b=UzQ2KTGI0kWByZT33pbDPOl7E0IbfJbT9XcThOSeYcu8HMh6kew7jCPaqwMnAuy5/h8d37Yu3ph/knkAc7DInmYCQMhNlrh4CgBsw92SbUqPJiHOUximmPA9xMjrS2SjyiRDM52tIfBgORs+xCRpEs/yOr4oZ7DgOCe7WKYsFKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdOJ3lSw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdOJ3lSw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED6C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734992753;
	bh=tsJaACv2PYN6C3WnweQmGoXngAen0rn+gjXYO5eIa+A=;
	h=To:Subject:From:Date:From;
	b=LdOJ3lSw/y9BZT/V3ZBCONRLR3Zao12IIbl+r2LUJgGdynIG8N7MgeOHCpE8B73eh
	 8VD5pdqcWURVaq3VZBjmRq7PZgp+LyK9/HDkyK1rLPH2/1lXOdec+RFeaS3P1QrAV5
	 5pa5wm2jbEt+dXW5pKHUH7RPNBEVv8uHKmqZ1p6zGn+h3HSrgPpVpFWDHJrWC6w8l4
	 JvbSaAYLeRKem8iTf0PYTpEXIRJPxOaGY4adAqV82qjpcS+d9DLa7y/1Rr7WGFjjkz
	 p/W2bdr93Spz5ZbCdnvPvOQ+uQtXGtuCtG6lp2mVKVGc179BxhwPMbQw5rk0OFBj1c
	 08iTyUVWiTc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6CE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499275360.20359.11172530118289543836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19b6b0990476bbf7227d0a68a9c877977882a9101f7f8a5ada1f50bb58f689a
Date: Mon, 23 Dec 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734992753
