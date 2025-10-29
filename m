Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E368286891
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761749994; cv=none; b=nEHyPk1qOMBo7GRI52aVGnPc9/DFn7+aKTR3TmZWCPTS61qPxEWtZl2pbbuFfi+cuLZVXs19LnVcB8ZM1Li3VlbVbWu1mQPlzY2FoQPzSKSZcy90WbAKf9ti9l23CGw+Js6eDt64Yxhq2PDltNePF0nIU9zShh9ZHI2h2/cbmUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761749994; c=relaxed/simple;
	bh=rLdzO3xcbnstKomQ54IjZGZwJl06MZSVw6Znmw5UeNg=;
	h=To:Subject:From:Message-Id:Date; b=PcJIkQPlUuxzEfn3wwj6uK5+83AWVEOXKxWo0tJvkdu+AtaUWgQeat5qW+Wr30U6h5oRVqyClzHf9V+fgkxf2gDu15XkY3CTXjkfr4kfL6Wm2+RmsjmdzWhUiTCjj0tfpCrZb40ZPk8aZwQ4j2GG1qw/gxmBB3/eo2njC/1zYDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJI+MdVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJI+MdVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7C3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761749993;
	bh=rLdzO3xcbnstKomQ54IjZGZwJl06MZSVw6Znmw5UeNg=;
	h=To:Subject:From:Date:From;
	b=GJI+MdVAzy6nKWD5xWYidhjBfq1rP55GUSsrZuHFLeKiut8s79BvXbbNT7RpE4VpC
	 TfRI/GRoeVAIX0714DWVrJ5GxrAjWMjOK5lcs+oRGC/LYv31ThOIK/2t7cgmwtCS9M
	 4RnIHgBrOMwG33/0+skjSK3U5ckCuP5gSwPEp6/+lGI5CgamYyu/EAG7+EiqJDRy+h
	 SDGqFQsE9ENJLtPiZ4rXjzUCR/8QthJj74oTCWXtuQbRfmVOcuz8Pgai32qnZqnOAZ
	 dHGO34EWeud4SSE8jzu7N10wmh8C8tw1Dhrt1/8fWYYGU9rWP1FuwDC3uw+HwEfpVy
	 0eE1tFWa/a9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB7CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174999358.32352.2351569802736295940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd784caa544f5637abd057e30ee635253d7f251ceadd81a9b48a08b82ddc1afd
Date: Wed, 29 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761749993
