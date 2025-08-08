Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E6D4A06
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754688594; cv=none; b=C2lzgo3cHR2gdigyBVKuW4X8hpzIpjzH4BU0C0ySahsU0cltrNY2jiP9RVEJoMALiOfIxjkb8+Rhcxcczjja1hQXwhAhkg2jQqU/5bT5JtZnTd8m6JfjsJbaTm9049Q7lutEodrD+UfRq9rLkPPeWdopdxIm+9b96UKSKRQJw10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754688594; c=relaxed/simple;
	bh=XG/gZJZTqY5DW/ib3uN+bg/hC6jGeZxvyA+Lr5jpVzs=;
	h=To:Subject:From:Message-Id:Date; b=KlHo90yCDQshL5EKZfxCY5U7WtWQOdRLnM8PMFuInbFuGlpkN536eGUCptedUPME67tWrIh8NF1CvGhX5+oJtK6gAwcRh/h8CvtE1B2uJGXygYKqn6FS+GwEXwguO1ry53A3LtRz+TxwfimPRwcavfwsoeBJVbTBSwsQnLW43Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7CH+C+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7CH+C+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D7BC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754688593;
	bh=XG/gZJZTqY5DW/ib3uN+bg/hC6jGeZxvyA+Lr5jpVzs=;
	h=To:Subject:From:Date:From;
	b=t7CH+C+NL+cmGCWGJoHE0IroEy5/UCiQ/Uk4hzrXod42Bi7ndWZKgVMT49zXW/fbN
	 DMXjuOXyL/lDGeZuc+T50M+MZfxpAhQkn0RIkVfcdJWvoBYvvOt0kbNWeR6kub52Hr
	 vIzuD+aQA6MtaBsz/kPlM2mvJuFp5LkyKyDvmuiegUc2vUKoOigoZNzPAny51R4Jg0
	 zqjAETYoEerKOq7gAEecHLvSNmRUsH46nzt0EZuBlAvCOaCpCb2cfvC2XTJV0I0CWJ
	 FGNXBPkQa9wLC0r2kClILRs+i4q8F7SNNunFUG7gmLRmSRz+UPeFlVh7Wf7wwXJu46
	 X9a4vqlAdq6dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F279C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468859357.3569.10112821109443145782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91659f276b51d272ab3b4f876e38f54ff1cd5e6731d284701837eea3da54739
Date: Fri, 08 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754688593
