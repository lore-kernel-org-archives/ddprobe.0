Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2817D9
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF1BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675071785;
	bh=BB9yOtn0JkUWUC1W4r/W6hbGID7qu8YorLWiq5LukX8=;
	h=To:Subject:From:Date:From;
	b=inSEXX+Y3psuT4tcIDdJML7V+XUgCkc30CbQju6wE4rcwHvmI11Tmz/X5IgE6YrL3
	 7/7BmCsOUK/ROPBMMjmF0pDu+VZHBbpKe1pncwKelZ0xzWRxr+Zy4e6EQ7JPUgyuIh
	 JOOR2KYyk7WoY8zK1/jFo1Pt8kDnUPFZKra0CTINGTNHV1vv7DdeRyelCsJH5Lpqtz
	 PFrVk2/WSohKjHqa4OcEr5jnu4RHKo1olIbY/cPR8H0gijT36QvpuZo8T6BegJlXEo
	 JqmVIaN7frPansF1IxSi4lVa2n1cnc63iiIRa2Pcs9fKeW1NxqTTFDJdoNw8z+PLe8
	 TZGQp6e3Lsp0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F26C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 09:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167507178574.15840.2942464357175990852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d433d2ce760085effcaa54c130aa5c0bc2fa5c02befad87b99c9d4f058a59f
Date: Mon, 30 Jan 2023 09:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675071785
