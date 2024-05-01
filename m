Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673DD42A96
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714606943; cv=none; b=iWgxtqdkZ5w5nWvHE2zjsJeGEdaoKA7/cvOCpfgANNL5WVRgRXIDCPeOvxNaHon3FBasYhyR+uJHKJeFocHQFNyehxAGqffsJsArrAsgArzOgl4e7BzHRTHJG0eigKyu1YrWZJMEPQIkgaA8jW55sNoeXKC0Cfss7kVyDySbYlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714606943; c=relaxed/simple;
	bh=dQbSZrWX/xYs66VsyBmqQUsOac4nG/s5x2Kn485Zuqs=;
	h=To:Subject:From:Message-Id:Date; b=WH5kUjr8wHEfalgLgG0oZtrcEb4nqFt35RNKCr/VEW+9bGCke6zLhgK0oX10CorF9HIcAoFtbZkL0ZhNhgmk6ttzjlDSIE5Ikax0RajjhbjwHp12VXUXIbNFt+tB3+jvauvugUV3Iwhjri6gqXFoWfNpSAyoPutp6ITALYWWQLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG08L7bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG08L7bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9299C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714606942;
	bh=dQbSZrWX/xYs66VsyBmqQUsOac4nG/s5x2Kn485Zuqs=;
	h=To:Subject:From:Date:From;
	b=bG08L7bHZPLcYuZVKkmb1yzMKhiWKMim014DTavsgf5BkXigNEIntQrAj9DzsZ3Kb
	 y34F8TW6BqEK3nUZnU21hT5n5NH63QcB/VvyNCX0K6LU/E8Jo1m+2QDf9ODctONh6I
	 QNc4bdUTltc1hh/69QZMytARpFgTMo9dpYkxbqjebNqu78cSQlb5sIPoOtc1Kua3SY
	 yZtElA8Zwg9L/fbK8Jshq8cLrUbb6g/+kyRrJ9EG0pOj3NCLQZKrhYhMAxZ5zKzEWn
	 bYpRZ0vLICe7qbBqvYVnUKVrt98vMlVvvEFuTeeTZ+ucHws3H812+Yb69O0cnOmizw
	 d7StQgcCq7Tcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE5A5C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460694280.2705.9162649340822228536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdb462964198f3662bb11df15024c5eceda18650db10fe2136e3cf4865043af
Date: Wed, 01 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714606942
