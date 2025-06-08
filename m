Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1211A7DA9C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749366594; cv=none; b=qcR27c8/fqxAucXr6cDdF3BjFhTwXYvdbscO1gpa1EQyvIoIs6SWtFABqco2yzyaHWSt9Eq+Fbkw3oVrGUd2Gp1hf1lEVxv3y0LFOfh3SmYj9CW5Vox3/X8FYxaqM7LgfFTeHwk7cdEWqp1qkvc1YHHtXYrENoQsB+Z78OjtSsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749366594; c=relaxed/simple;
	bh=02aUGz2zw2QCglch7T0FBfVoDiWsefjJLSLn2+g890U=;
	h=To:Subject:From:Message-Id:Date; b=Ogolg/j0BQ1d0N1jqakqm6F8LdkpTD/f762fYkLLdN1JD4uvlGqTFfhlNjrmmrxa+xjGJJz7h0Qz/SgW7gxr0q2Ne8PnHRUz7kNcj89fqJsgeW7y1PsCbW/cYf4Bd1m+1+y0dU+4xZvIMG2aJAgQr5AhqQ2oNue6ff1Ol4orFzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePDwKB9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePDwKB9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DED9C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749366593;
	bh=02aUGz2zw2QCglch7T0FBfVoDiWsefjJLSLn2+g890U=;
	h=To:Subject:From:Date:From;
	b=ePDwKB9IsV+OZhfCG7QM3oI8N7Ut1bcoJe5exEQPbp1nq+zUdONuMNR7vE5lXEhtg
	 2mQQO/In66nuNMWrSgpX1GCJBKZF6UZiFBWmlwcBqSZBUtbHE5ew9Dn8P1DZrSa8QW
	 +A/ofJ9TKfW7OdoqH1HsUakfu/43+thw2fNkik40sjyVf41BToEaxypezX5/gIizUR
	 KM/qN7Pim/BaGauXUiUVaxycXztFBFZKn+CrdDEwEz2qys8CFjqq24ql2pC03Jg1Yj
	 ooyZ2O9JIr07UBMR8qhfu7E78kbUhXmBQtKWEHjO93aKgzQxMPkwPXufN6MM8EegJO
	 wi1UFjoaAzbAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB22C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936659357.6032.5149246583026011118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ac8407bf88f4eb4324f918d3f1ad233c06ba44a0d7696ac47f22ad2be6eb38
Date: Sun, 08 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749366593
