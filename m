Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F3DED8
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C10EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665924653;
	bh=IZIaw3mFrubsVW7AFVN7UAMqTaT+Gg9aliGdKEZcPWU=;
	h=To:Subject:From:Date:From;
	b=IKgnd9fiNiy3ilrAwnDfI97z89V1BWDwNkH0AtxmcKh7zfjGxoyhayTGdfC26BGa3
	 8vwMA2n2a4M8+acPscCI+86J2saJLCAQ7SDbGqMZr3DkpqqGQbejxH9v4ARwYyRkT5
	 iSZX9iA1MPcSIbKvLFOGx/dXuPfGwvIRlC9fznUWz8Mdls7RNZcfzqlf2GC188SSsL
	 hmuGJX9bl/DqA9OtmafF5ds6aSfLTAFladHy1UQgXC/8IMaTKUoZKVDHng5adiQgAh
	 ZVhuWRb+CN2T2PrzILQA+WFDNyuwVNskHjmXhV0y3UjF6YAWlFtb55cVG415hsRMHT
	 SNZRZ0wC11zww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE1FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592465331.32136.8582399927858515949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca01946fb929348cb9b215514b8fd61fbb184f57a077a35cdc7901100c703d6
Date: Sun, 16 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665924653
