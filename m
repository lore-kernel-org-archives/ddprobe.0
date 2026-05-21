Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295B35838E
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779394954; cv=none; b=H65ubDaKCAvarBVW0CtRNM+NPxJx2zrjOjlvKsuhn8r/autAgjUjFYtOV1DFXe/xN/l/EpwZCXeRkOFR7/pLT0koj4FbDJ5h8vaotPykAM6H7B63/CsgYpQ+LC2YZ78IutzZbCi3ol8Koj7yY1yRjG/4rkUeK+HltA6TIfuWFoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779394954; c=relaxed/simple;
	bh=YKYcBOE8xrqccat7c7QDh26c94Q7P3gbyKf+k/Ma6Hw=;
	h=To:Subject:From:Message-Id:Date; b=cTScMJ1o2pddgae5phzLQf2Ks/yonMZw7WikRvnkxE6JrgebJ71NpR4RLxczGknRd3ro+GvL5PwIlM+D04tI80CRuh6BteLkC//T9BNb/68CWjW4KdDsRjIG0gl0+eYjoLHOyUJsz9Ef1aOP+qKu1X8A6qQVY0WZKDW3h1hf4lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWzzGL9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWzzGL9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C43C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779394953;
	bh=YKYcBOE8xrqccat7c7QDh26c94Q7P3gbyKf+k/Ma6Hw=;
	h=To:Subject:From:Date:From;
	b=dWzzGL9SYDEpoj7BEkCfKAcrQrs41pRzB9St+t7IHosHYN6REPpYwv5sJyZ1rc3KQ
	 2/FmTqeAKL1GbOThXpPNarWqbjDK41Q8Q50en+COqN5edrxaOjeW7LVFWWwHkK2m5o
	 u/VinQEKZsfs8Dk/mOMy664+qIgL3MzNupTxWEhO4/AZWqb1V/9wBCgBe6bQj0PKrS
	 5rYzSi5r9abjMvkWWmaW4Lm+MvfjdC3QOjuyaO9APHxPR31AarEzuzNmFz4WECwuZN
	 PKkssmAq1x2RVRgQNh/DsQMsfiQ7XjPMsD1a8h5WJ4T9ER9TdR2tM7X1YjHw+e3mA0
	 H/sB9+1yya8yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1DFCD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 20:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177939495368.18461.15752032838062630628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa797e9539f53bc507681ebe2d5dee44a4572739d34e82c99e2f3d20b9a83da0
Date: Thu, 21 May 2026 20:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779394953
