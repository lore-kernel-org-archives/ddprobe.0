Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1B9AD30
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 020F1C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680130746;
	bh=lzuE2SVQuGDBDDd3p0LvOP5ZXiDsWiP6xcNkSET52xs=;
	h=To:Subject:From:Date:From;
	b=hMyEuJuKKX0ZSt4VlToOtF3b8rgKf1ASpqoX4OJyf6HlbQim4AXKFUTi+h03uNak5
	 0Owcay1iRprXGkWUtwHdfd6ukr1qA+oqCG5kPILh4VbtV0Audlg5rK76AHzZi7nLYz
	 c+zy5beF/4irGtlfXpJlES0t22cyDXvtlqB4mTjvE0blFCHvOpJHaQlqqHEH3+yAt1
	 jKrHAjrurlfx9JylzroR2RarhJHz2iKbUV1j3rTId7xNgAMSCDO4sm1RHjgY8A0KSN
	 InJxbKRVWUdiyfRhnCQWzDB5Su/iDdYTmoVlkYxoVo9AHKb/F/QPioZqq+yDPnF4aL
	 5gmLGzQJNs1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A09C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 22:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168013074583.4324.7768007271997694939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61bf5a19968f793db747f05e92d87542a1de5ada01ab49679c55670d5f48a922
Date: Wed, 29 Mar 2023 22:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680130745
