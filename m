Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D313C2D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782524914; cv=none; b=pmxu5j8DdgNtCg5shSOeqCcTIQ8q5DvSvTCRR+Rw+OZTx79xUF0M1vedyp8Vndt2u0jAqN6Sh16BFlvmkWRlmPJ1qXINjDRjlifFC7CyBR7a5zDVcDzv2zAzluBPuax16GgRd6vlO5XMdoqCjVesPrn7gXD+rvvLXUfIIh09XS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782524914; c=relaxed/simple;
	bh=67QHcFrEj6OhEVXWwRCC9RFsML4oYIg/1rAFcQP0KSQ=;
	h=To:Subject:From:Message-Id:Date; b=e/hAb9uH8qlDLH+84tvnvWrG8+iVaIr5JaIsS8d91DEo2sxSeg7mawgaqRvrP+X5tfc4XgbwYwOnXCWv1XlnjcrzvhDr4OmUn1eWOu0z9R/ZQOQjADqqa25swXqr8rLvlPsNjEPw5KevAErMASwDmIIgFqxwDHPtL3aiJmYSthc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7ezIqgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7ezIqgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DC1C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782524913;
	bh=67QHcFrEj6OhEVXWwRCC9RFsML4oYIg/1rAFcQP0KSQ=;
	h=To:Subject:From:Date:From;
	b=l7ezIqgkYrEDSboPajorzcqgkMfAQxYOsOusmricS/3hXHGWN1FUzpGKZQLCquc7Q
	 NKhqpVvXsm8BvbW7W/F9cg8ebiEZuRXPvgw9Yi8DihzAi5UMSq98gpjzvUs/hO80ju
	 3N1DBI3EHGN1jL3T9XGeHELOlSdUr6XI/uizk33/Z+TMz7uGufEyAWZOaSEfDWnpsu
	 5QaFR7afVudDPhGhW9VweFTzn6UTVSUpWtYf4csec4P8i5z1v2DIsmxLYpp4Bkz0Yb
	 O7+r5OvgQl1s5ZWJy3/2TkEwMFRzZl7jf/RzxpurTZngzzwoFJGJ62gYU/C6yHTF8V
	 VutHPwqTSLCjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5144C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252491373.22138.12523581717679255221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ca253e48e91b3e6e99558ab57778d85cba850d50edb59d3ae521a341f8c12b1
Date: Sat, 27 Jun 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782524913
