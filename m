Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C19214811
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748804394; cv=none; b=GZ6wTkavLwYaa9SsVVQ9t7e7sOZ/hiMhH71QovBsw4hhMDUuYM5t4jj9Dz88X/MN9mp/hLGayqjZcbgkx1dPLU0twrYknqlyVpatI9tuRcTouL1z3NwsGWUJexeTLVTjdyjuMvGK7YBLg1+f59nV4OXCYib2P3C/9XsywbMUfas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748804394; c=relaxed/simple;
	bh=emcy1zqPtqIF9oju/wnBo/LT3N2Tezfm0/0jitgkcXg=;
	h=To:Subject:From:Message-Id:Date; b=vFqKTK+5foKc9jlMvUlMnyV2zTxozq/ziNfGAz5ldCJiLUX+rUIF67N+mrtcfbhRBaIMkYK48tOwF30Hbou+Gp7eNmcMvfrO0a/EIDP0oroPry/RO+ldu0VRPXCoABdsIA07KcGtbbQeiglG0kNYNYrI5g4q499KZDYj9KO+fIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2Pj2NaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2Pj2NaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748804393;
	bh=emcy1zqPtqIF9oju/wnBo/LT3N2Tezfm0/0jitgkcXg=;
	h=To:Subject:From:Date:From;
	b=t2Pj2NaYXWP4ZB6bwH7hQomAtH5+zF3uykxhR/qW9aO/B6QZjvpT9yy2YXqpas5d6
	 Ez/1+Zv+SokLmNBGbLIQznIxtgWR6mSiAMUX+KykfKlSmCTUCXUDVXQlDoYfGCAGFC
	 4iUC/CMaxtfmnodFOXg11GUjmeihNjG6iNptNQ1oLQ8dPI8A+MpM6eIk1YqcfCpqLX
	 zcehZols9O8EbzzG0/LXZBFndSAKbz3FtgUP2y9tcnBHQqzndwIYdkHdC0TKgJ9EEf
	 gwbnJfaK208uBfGvrDUR2DadICbJ634XcDgZptGKOO2amcZ1yRpiv04CW1tPZZbYwT
	 NFJ0WC0Y2zPdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E06C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880439358.7997.1975301164387635918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b53d34ce6ea223145b3645d8b62f493190fe8e16250ab47954c2944cf7aaae
Date: Sun, 01 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748804393
