Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1869320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EF1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672666287;
	bh=07YGcMbMMggD18/YgBJwFEoJnwWaC9MGBV+C9Ex32PY=;
	h=To:Subject:From:Date:From;
	b=ras4O+uC4ga8FktPvSFLRWyApzNqyFyK2/fWy9pU731VjnzVNQyAEEBwj1fpIrzgE
	 gu3a5yGsT4YKP+W8nZPx2lHCTmPQ2XzBG7oeldwo5IpPauqgc7tIGrcq0IFLHO6bXb
	 j745dUJKq7NZ/TmCIbNpFoLoet7h+rtcyIgxOTJR/cvtxX+1hn1fhH+YdqsDbb3qEy
	 a6910n79vTE6v7Y+6yxfnR12Ngz1WsMGC6vj5S0eDUEkPjjbnEe8fKc6XYwJK7gehH
	 QS2IwtPlvKI3KAos1fXrQFsFy+rm/qRVwAI0xFqWuA9itrzC1zEmSCy5kWx7ILb4fr
	 uHy7pSkOg00SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CA92C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266628740.3683.7413210951154182271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a7b98bb9078a1aeb9673c6f9a66f8de3ea4d81d0a7892c67f4f089a6a1960d
Date: Mon, 02 Jan 2023 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672666287
