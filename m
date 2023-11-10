Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C12186B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhugng/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 847BCC433C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699599496;
	bh=6gy2bTyU3vI3AQbZNWxX3+ugIyqCS7XBoBfDg2GbnfQ=;
	h=To:Subject:From:Date:From;
	b=bhugng/ljO2ZnL3rYeu2sfL+/Iaf/DmnsIaEXaxjekQ4hIx+9JJ8Kkb760q4JIcH2
	 hkrnu3GXt7OPg7uGkF9mo/gUYZgLaIfsxE5MwAgyvhlqp1saX+xpUg1cJSehBDC3si
	 RRddPlxfuZRz3KULp1F/7wTgKhBccPrAlMxQM0s5sRqyO4wDbHMM5p2PQMmpE4UmbZ
	 suuWnk0rUS6+shw4VLjOO0x7Tn+rgxUgCV67jBNj0qRQqOCCK/XvN2DD+Z+K97itu2
	 25FJV5PZDJ1SJ+rdwMb7IEhXzz9So9wl3NGDsqUN/mZOMWUNp7L4CzIKkfl7y0af82
	 DaAHx0YvKip7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C57C4167D
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169959949640.18717.6230237788974913401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a7691ec7e570128566afd6bd306fa7605899bd7bcfbb2da528cf9ec781c52e
Date: Fri, 10 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699599496
