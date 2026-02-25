Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DB523EA90
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772015693; cv=none; b=UeypJP2OHYCe36+qvXxLaAlx2ywxuJ4IZ4cZGqcXzd5sGqILeJ7ogZAXrrNM2zuXIRfgROgF2yBBQNRESo2S8SM1hAvgws2LNLbD75pgpYLqd7Ip0/LotCUP99ngwHpLbqZn4NMCa9/RnjQkAH7CTlPD9WJ/Oc99XNLwuYhsPKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772015693; c=relaxed/simple;
	bh=igaPwF/DkiW1Y6md067nMrWQ8eyRnuk9S1F0fOVKNXw=;
	h=To:Subject:From:Message-Id:Date; b=NxextMNg+1uoVd4UygFOtD2qN5R4Xet7rjb2nLYTEnpBtGZ60U/s45My/RlV8KVf/lGw9EgXmLdYbZqrb5Klp499N0x3Z0tQyyxC0G2V/OlSZmBLIpculYe2BXTT+7T/6HA7b1Ecf4ykWuzobi9dGOEsIhmyLUsVwgg4PFynRcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwISXfLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwISXfLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AFFC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772015693;
	bh=igaPwF/DkiW1Y6md067nMrWQ8eyRnuk9S1F0fOVKNXw=;
	h=To:Subject:From:Date:From;
	b=LwISXfLS9w3GOXgv/3LL8Tc4bWJQrcEb806RnUcEuPbwDdtRE4CD6RlxAISMQw6XE
	 ejF9rhL54CVoHMMceXcV5OUhLhuVk+1+IMRwa4LTZl4afrm/O6fxBjq8h9rOX9j/Re
	 QgcOGOIH3kJ1Xhm+GFD/np3ArLbcEHY36GhcE6ioWGaQc8b8woOjATy9L6btzVWxhv
	 +Es7ylQZCqR4x6dGgP+kKL4GIobM+4a0ec1Y/g9EUOdyMdLV/Jgu5fbchmk8JaFAA/
	 IHrOtt1Fy6C4ah3YZ2nheXRTnW0OKBeNUlBnbJK0OAyH5Z6hZTO8wDsO92mNPobTiG
	 ICt0NLe+8rDgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931FBEFD23D
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201569359.14362.559318454444412277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbea9a45ee8f913bc7abdafd5c3b000b8c13d926fc78524056c113668aaf195
Date: Wed, 25 Feb 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772015693
