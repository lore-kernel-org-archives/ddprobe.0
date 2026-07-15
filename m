Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDA5338910
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784092114; cv=none; b=MrM4ZuQqTGWQY6WBos50wP1p2w5NzQJke2YvyaWmBiN2cRRAM2Yq2aoYYtJtZAYFRn3B6bkRjoD1G0znmWpdACS3oYyIhfcyJIvDY3yCu24M7hcijoA8tXW1e/LHO3MHNJCMmrHfNtu7twt4wyOwtjcPpGbHkt6AS8cDMEReWQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784092114; c=relaxed/simple;
	bh=dxoPzWkCUWjGXo6agaTUzHFOR+sEvvM2civ7K4/iQvg=;
	h=To:Subject:From:Message-Id:Date; b=PGXhB2VSj2QhcYHRQcTrSqab8iX1ojnHNbtrwczhT95KL3XJYZ+Qk8Ea8QW0u4mfOJ97ieKxAtmO5JEc6hfCXeggTHgFc/BIZNnxi1dUYTBObqxxvY8jmzuEa/c2HqSYzuuI3p8UuTBtyLw7CPvNxS2PKMf4W4o8wiMBSpoZzJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgL/jOj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgL/jOj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29EDC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784092113;
	bh=dxoPzWkCUWjGXo6agaTUzHFOR+sEvvM2civ7K4/iQvg=;
	h=To:Subject:From:Date:From;
	b=CgL/jOj+9CIPzhzk/kaTRqz2gQyYJm2rd54ofXWolUQH4g/1rkXmnvMzpyACMIXWe
	 bzArt7HXYunbi7vuyJNINK7jI9e6wLe4hq39PuTG9t7nLt+caIF4QgJRtGF9V9hEvF
	 PdZ8cUziF4tBAEal9Bn9ZXvkUUGvLGWanTDSuBtEKgVq4vaMWmbAQ9+naHGUp1126e
	 RrZMRx+MOgUZflWMOVFzzIefz6dD6PJ2do91OuLVgOJoKFI1WDIIv5q+ARn87zBI9I
	 G5Nj7ud9UXrZvs2g0+I9EJRUM9kkZXVt4UEYd+FyDG126lyqftJpa0O12NxrC9caQJ
	 c8YEjYQ+ZeNZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B766BC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178409211368.25928.260693638310275241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3395456ac994f53d7fdc7b5802d070518692b603162bc0094799b0cef7f4f818
Date: Wed, 15 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784092113
