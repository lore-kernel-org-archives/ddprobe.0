Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF2B139E
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F435C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666938654;
	bh=O4W/Q4L+XjMTEjl7C1IhYmAWfxxbYPzcdYu1RrtB0jE=;
	h=To:Subject:From:Date:From;
	b=YDAstcrLWyoXnMYMijx48CAY2nan15JXgGD2IUwyolRZ0iWsDllOtPwHO7Ii3DO+S
	 d0ITguonp/qkuWb2m8o2ONljgN5FmlFsTzmDw++DReDTwT/In4QBZ9GIPSCZYiiE6g
	 plZJ8L0kfycR1aq2hVWJQqfH/sS5mxqkeLPBs18zjHQnDP/9zEgQyiOEz6ZIJvgyFz
	 kOGno236wXBDJv9sYJBnPBPR0/lRadKhMbKs42jbHhw+REsTTZ080l6FhCLVzZDz8g
	 UBvWxADBNWmNTBuUBMVgCWzFm+xtGfm8pmWpBhBDicxWw9ad8gJtv2yArg+hKS/wkK
	 wT2aRYppgfSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F28C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693865434.16050.16610102300892775909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73dd665928f90eb5168248da85fd40ece12e258c2deb7dce7d35acf0ae030175
Date: Fri, 28 Oct 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666938654
