Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9EF395D90
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772146493; cv=none; b=sPylkMR37T08UdFOfJ1FV+x/5Dg2BS5Mkq3LCQIWKPzo85/NPSC9y6fwu8pG3Anu3VpcBb6gYwRSY/sVsqCc1vHBi+RmIUJPTWp+c3Uv94FzI9BkM2ITAJ6ncDmCov04PZcVNdqkZddPb6Nq0ttjtXBM4VJFttj7fCdlWWEz3ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772146493; c=relaxed/simple;
	bh=Q8D1DAZl8AcKlA7vPiyQ8ItG2dpNz63ivOw4B2wiB1s=;
	h=To:Subject:From:Message-Id:Date; b=qtEfXsY83tFWGSVbXCV9lTJmLQX7K+UPbRK6vzRQydU7amAL1dyk31yr22YSUhI8Qvz1v7EuSD8X/gWEwnPxtGtwzIyXygMauEmKO7h+qRs6jdZo2osRGsaNfURF3tBYwlcehiYYaI9sGBYwqapoSbvrDCz7EuLwnjiTsECocZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm/bPNkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm/bPNkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55FFC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772146493;
	bh=Q8D1DAZl8AcKlA7vPiyQ8ItG2dpNz63ivOw4B2wiB1s=;
	h=To:Subject:From:Date:From;
	b=Tm/bPNkxiOe3KP1gPW5/Cj8aExVRAj4SWQS5ZR3BFpkTHQuIjpMQJSA2S3xIHNg1v
	 FYYoWLEa7D0BaIUliIxE+k6s1dqdBwMcDL9Oux12z8OzsB3Vl3L5xFJ2mHyTfCJNog
	 8NcadCOiitIIhlRI1VFKMQvxF8e/ogppsWa6fQRE/VkSpPqEukvGRFACqkCl3Fe8xm
	 OlhyH6WcGScBk6jKiYjGMOtQIwMFO4itOO+zw5Z9f0M30MBjWqu/SMRywtyd+CiMgs
	 W4pBqZ+CPgMPCza2Oks4JJVaUtl78jwPC76OYzdVwBsr/e/+jb8Gqg9fuIgsZd2kvR
	 O8siAxO8uHGZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9563AFD9E1B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177214649359.19504.956229676630059658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af0d83e888dffd832d243995071270c66f9725b057eb94058d48f89463ef5d9
Date: Thu, 26 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772146493
