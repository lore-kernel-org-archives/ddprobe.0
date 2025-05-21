Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC5C4430
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747799394; cv=none; b=hEBTBRtOJNGNILqz9AggRpWqPn9Yigh55UEgGk83L18MdCtlZbIanWS7JWmHPmdzOso1skkcEzPaVs6FnWnj5vuRkKWEWJ90ZswQ3GBxR8H6GdFmooyW67Oeo3Fst2Y3m6pD6vFVuFyizH4hvHqWNNtD/9Yxl8s4jvAxPQ7lFqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747799394; c=relaxed/simple;
	bh=4CEWFQderm5deZ3tQFKlNvN79YrmEv98T+f5ib603D8=;
	h=To:Subject:From:Message-Id:Date; b=GLQshWQ9887z97Hf+R+3nq+QWzA84GIiLfkR1/HiElChVWVlsPyrwW9ZLxy7GD7fFP2uYu1CZMp87HMQeUgUHQ7XIukJ9G1LxcJ5tyQc8H48V03tWwz0GsdpgOCe8uR8uV/iap1YwCWnMPFN65AILXtTNOrJqCSYlNCZwFp2lps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0ItkScU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0ItkScU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FC8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747799393;
	bh=4CEWFQderm5deZ3tQFKlNvN79YrmEv98T+f5ib603D8=;
	h=To:Subject:From:Date:From;
	b=e0ItkScUPgNwTLLurCTHKcmgDTNcQsC/0ka3inK5tpBcxDf6VO2xpjDkA/QZ0+Ij4
	 AhnjyRAiy9UasBAwTg5IxmXWArXsRQWOYC7fYFRfJhgYDC5/Qwl4YYsROFoOU6lIBM
	 xJaBlBOIuZ3FTTPZk7Oulk7hlRUcyYPQ5uiDxUG6LyR8sIaN5/fu9t4Ge1D+OwxYKR
	 g7huZVLcMIgbntoqqCMZCqVf+jZidBLUNeaK7h1EtYAnJQcnJC8BaDvw4AKwcHdqNc
	 2cKQWztcW8uHq2SqSju4UQfjlaMwONAp2Wgn2HS5ttmY8GnhAN7YbvA8yyy47AY952
	 W9yVhgwreBMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DEFC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779939358.18002.12364166883158136276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164ab9aac289d06a25195297447517e7cbe502e8d8851b49005c0887c15579d1
Date: Wed, 21 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747799393
