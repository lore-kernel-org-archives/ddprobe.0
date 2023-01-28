Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C3C3C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62CAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674949985;
	bh=DS89wSRtzgQ+3nIl3uuGa5kbrYrNEhA56ZvyyHJVtEo=;
	h=To:Subject:From:Date:From;
	b=MH5Yv255dgSqEVehxA5O5N8IAsdK+GGWLLIG53or5qCbpqBXRvtRxUQ9LRkvv5rMG
	 ypZpSo1EiSpD642Wkfk9EoHVvlJnxHBetPAPBuI3jeaIlPH96AT9X3Tgqs0dIwAMWz
	 4XwdZPzk44zOX4z1AHDy8vCsLR8VVpqI5p6MSBPBtLLkV0LpTz6PTPWfEBdKfpd9G7
	 gsENNdJswbaYz8ehoWZh/jSPcCXo8ojs8SeCy3HscfScAn1kipGo9r7Pn6eTsm4uyk
	 KFuQdFiOomUROZsZ7gNCl4CkVEQLh5u7iVSt54Y0hoasPIqyibVT2yIO4gon0FN1B2
	 8rYHCwY+WRwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBF9C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 23:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494998576.30903.8367161176429018981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8d061d890b7a7521fdc468a90602973366b9cabc3be044989a4d23ea6c0d71
Date: Sat, 28 Jan 2023 23:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674949985
