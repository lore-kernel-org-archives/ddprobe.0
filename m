Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D8E7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3032C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674548586;
	bh=XVr8pQXx8oHyvI1I1DlUOUZYrnW0GBQfFpG/gVFw/ZU=;
	h=To:Subject:From:Date:From;
	b=mAHcMjcgTVr9zwqN1JTu/TeftI07tD3H9OZSm4uEIznW/tj7bYsZjuerrfvjdsaji
	 rLIWpzdw0F70Q6JG2F478T0OfZHB1b4mk/UuExv2hAJ6+CKKY3wnSWp4TRqQybfV0K
	 zhh97QE9qLTB+thih52VPpbG310myk+4THW3LO8tqG4mujoH7ak9OIAG8YFn3GlDU9
	 kivik3jlMWUEhIjjR9/xJNjH54PO8lyTUkEt2IO4n0OQzuQiU9MHOL168g0LgLzyaf
	 aaIXyfw/ukFHQqpQ8ByiR6WXPn3J94NHOpQ+aFDWA7LdAEf1Fluzav9Y+pDqpUyKhi
	 hZR2mDImRBbKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D64C0C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 08:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167454858586.18551.11690008573155064542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b963148d507f57ab556f459107b8d92b5307a41e22149adaa8dbf5e9f437a9bf
Date: Tue, 24 Jan 2023 08:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674548585
