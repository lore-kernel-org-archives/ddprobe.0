Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EFD19047F
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738913755; cv=none; b=OQybojfKxrDTNzOIqMRJg+S+eUNehOOtWmR3INeizo4m4z3mYNotBr0fjSNO8qo93kpgEg8Wyb1rtCxIa5ZY96kCv0mx0wWnmGYanZZiLsnWtN7pxgCdH94QGoYIzlXFPO5e8D5j+hcrd2VkgWS/+IoHPb52IgjKKHcOVu5kYj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738913755; c=relaxed/simple;
	bh=6hiG7jzGeZqEm15jbVY+B8M+zdLpG7t+roDUEY7i8wM=;
	h=To:Subject:From:Message-Id:Date; b=P1PlVQ/QBWdBmQyi31Hc8IQWTlNj8fDU3bYKJRxP+ghQGBncrDzqDTJBoRXdjO1b1pTjcFNjxuesgLLFk+MJISIYFNkjOBmXP7OiplXuhWB5xuJpNDXJ95mVaE9apsOHBu6k1zbINcQL4EhQ1v0gJx/a5NYtyoaSVXNX/UZUsAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeOm7OB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeOm7OB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8876C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738913753;
	bh=6hiG7jzGeZqEm15jbVY+B8M+zdLpG7t+roDUEY7i8wM=;
	h=To:Subject:From:Date:From;
	b=QeOm7OB8UI/r9XJUr1C+e2URU0VMhfhnaBvMKR24+47jJZuqg0AwH1rsoJlNfoVKr
	 5hp+52B1VZeM46fargxHJw06188/GcZg2wUTj7yOdWtuSyXU9gjcqb0UQk6j9GHiGX
	 G/d/bnpzyecrqaxwzlZJaaiMKNUFI7/ZvC2e/42GH3YAkiS0ZH0LHVqv5tGbuLYupo
	 mOoNU7sIdeBIr0BQa2RiqJUK4e6mIxqoJ8W3iZH9m9MRDudXg9y/ekb3gFKUSP9Z2x
	 HXv9gaIVe1AxBlycz8um4oj2QfmHIVCM1n6Qb+B5U9GysFDp044bkm4cZn6rGt9Jah
	 4IWFlwdbw73Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9945C02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173891375366.17769.16496446267377167511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621df13818181dde78c2c1a80ed7eefd112ee39453be662b19a8cf0bf2ab7937
Date: Fri, 07 Feb 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738913753
