Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F51F13C8FF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749420594; cv=none; b=uoM/vKMg7CcKsZ2ucHAN2L4L5GHrJGaa39+JKwisAT9vh0xH37F/cR4i3Ljf+iDjhEUoKnbkHtbM0LFYjZtfK77K/rEJyC6RdxIz8h4AfcIEY1W0WQcCAoNS3BcTwl+ihvwnTrS/1W9wk9mOaINd/3HmfRc7QfbPWJHM7pYOw4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749420594; c=relaxed/simple;
	bh=I6HftjnVddmh/gyf7NzWTvKHV5w36CWUV1UwuwhGjCQ=;
	h=To:Subject:From:Message-Id:Date; b=WeKTiF+MbVTDaFfTLMMPexetzSVF1CPGc2NsebGF5i5G0kttgJgwDGzpnyR30/ZSIt8u9m4Wyc9RQZgTymbKFlUfjhwzAbDJITL/HY+A7khaCLVg4Z8cyQHG8f8AaFPKFRxu/zOElhthzVJQWyK1AzC9wR1SSw4CBii35LclSwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQTgFZeM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQTgFZeM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BB8C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749420593;
	bh=I6HftjnVddmh/gyf7NzWTvKHV5w36CWUV1UwuwhGjCQ=;
	h=To:Subject:From:Date:From;
	b=IQTgFZeMFooKaCtOODj0q24n20SpVr2vVnHUybAs7BY1w+YQeD7TD7KM+1ct1F+og
	 O9DFvp2QxIfSpuVqX/QxVuX6yeCPhWKa4tj62Tlf/2cZIH2FoSDF9LwXZTcI0HUUNg
	 Q4FbDuP9jBPW0vAD1Rrof11SdE5uuokhPoEAOgBQqWQlVHCtYD61LLXEK/mXvx4TAu
	 kBta4p5dddc0+8eD6NBaIXYzxzs7EIpRIPaLuxMyC+SdzndIpDTBTzrnzZH+5ZoPET
	 R+lH2isN5NT7p6I+XWk4Do2fhHMr+c3N6YHtvhE/TH2OTpFUZUQEloOMhJHxWA9yIC
	 dV0jLipcj5uzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F0EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942059357.21827.974200447156851900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dadaa26310a6b6fa7668ed3873f82d0eaebcf587ea58024941279526a8fd0316
Date: Sun, 08 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749420593
