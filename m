Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF972160
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788CEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666508453;
	bh=k7z0Oxxc++NHr0MlKgF0yINxf3pO9bNk9cdTpUB4B5Y=;
	h=To:Subject:From:Date:From;
	b=NYn42mWYRixpkfvzWJh+XC9DFrMT3p9WOvtDM2Mi+xmlQNsNWN83VOka7zAuzDpDT
	 4CIR1JxN73vnPYQkhLxAqYVcfQQaF9rwcV46bydI615sgEcL3RoY15Yi4DE9z4KvRj
	 rGBJdUsjr9CnmpGxHJ4yBuB5BUK744lSFbVqrEzREEYzatAg+t1akyU5giUj+bDB1u
	 YzkQcfGi76Nhwtimcp3Y7n1KxhKksHIrlDSbwIqeYbg7tJVKIUvfd3zB/sseJFDUkH
	 d7GSWhCVwpJkjFfxCMx+YmjTlF4RJnT1P+rA3dwAWnhQNLSzPeHO157a8YSKKdijID
	 dFeU7aFqZqPFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A002C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650845333.3370.6856285588019760202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f1bf3dc12319bc589f1fe950243c58497e61c3e8073bfb5cdb5e9638a15b8d
Date: Sun, 23 Oct 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666508453
