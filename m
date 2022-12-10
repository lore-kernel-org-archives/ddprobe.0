Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D62A4363
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839E7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670632887;
	bh=iMKMObkIVFQ0DA8NN7FUAXDhfiMxqiw5wwi0v5RvnVQ=;
	h=To:Subject:From:Date:From;
	b=nUhyRq9Yt03lC7N/tHcHMjGn/A6oa3lji7fRI848mtCpIrR7HXtxZFQRHV2GAs7EA
	 hWLmFzBn9qbemmNdvglSLlRqiKRZzB8sk2MEFn5XKrvmU226P3QNRiOaqmHfS3TuuY
	 zud23G3682GquLv2Nyy2hOZpcNoaWNdZnd3mVkt4VZhBABDeTdXwYVF4+TW8WPpybz
	 rxLCzrDFFbOpKa6Plw0pzpakoY4xDAe137i5s0JBglw2cpIPQDhC5ankz4I4NftpFb
	 tt8rXp1dY6XaBsLd2M1pPndIbtqb4MpNZpbgCCV9MOQOpbDWdHElHk0EkViZY5EJnw
	 UdZK0v77mGbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5C7C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063288741.12849.15981185450709500673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaab14cdde00371b530e99d7651f5d000c8af565a495bac9294e00d80a4ea9b5
Date: Sat, 10 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670632887
