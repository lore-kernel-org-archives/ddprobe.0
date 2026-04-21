Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197172D23B9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776808054; cv=none; b=I/jgtn2a4rE1AHaex2lUQ1ScRCm2YSGqhrP9wpmL+P0QWEZ/7imS5n+BNkGRDqcDobLKSX2bC5cAdiNuwjeuuI7V9zWz5Crt+rbIR+WBxN9AleN/omkKtLrRFA5eyy7qwM3UjSu1XC4mSlEjwz3/zaOoEd5xFnnki1dz6yE06qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776808054; c=relaxed/simple;
	bh=14xHLELEkvRDCQOhzuHHVcMvvgEEnr3XJm8gT9jx9mI=;
	h=To:Subject:From:Message-Id:Date; b=W3aRoPlzkr7nO0MTtt0g0jRQrr0C4lJb1aJtI6XYisLNjmdEByI0m9EWJAoMWkH1+ZHSVWW+5XS73X8xJtIxwlTfZjPSsEc3bvz0JGN5fQvRg+neEBMgSp83R/dsc4DgrdVoKkwNDxGwjZKStmxJQl6IreFlfp3dZfx52r7Tff8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WaTBTdys; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WaTBTdys"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85D8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776808053;
	bh=14xHLELEkvRDCQOhzuHHVcMvvgEEnr3XJm8gT9jx9mI=;
	h=To:Subject:From:Date:From;
	b=WaTBTdysevD5uzC1QxnuLlSSjS29RZ/9wg9zC/nXLwTqYehs+HdeVZpXkyK7WGUNJ
	 X8T3R3ZjjSBk2U89G53k0GrN7vNoMz/xWlBGU/HgftxQBqQ0ru129NkKchGdQU/IkG
	 A2WGa0w7VWCiMGUUByYzAW8IzjQKLFh6M2KHGFq+rtADdKfF7i+HlhSjvdsNxEUAce
	 zaNbStxTJFexDp8IKnA25Be4Wrndg9aYGvOOEszwArGKErtWE42yvdkuHH1r+KfwfC
	 miXWgQ3L9j1KrxCPmBlr0v1DrIIl7n7B98sn8NzfgWgQfQYMLp+UNIUSo7LCyn8hmW
	 yVdk4+v+JGRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA133F94CB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680805368.7236.11457865271603567437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e876256ea6a5fd6c468fab5c2d937e83ba776a5d270b29723ccb91437aad09
Date: Tue, 21 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776808053
