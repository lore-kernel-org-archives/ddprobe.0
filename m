Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDDCC1FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E220C433D7
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664598053;
	bh=MWzIv5P3XPus5JTg4p8GPR70nYYt+wyVu997wRjtlqU=;
	h=To:Subject:From:Date:From;
	b=kHv0rqYyaSkj3BZBYVVZhktI2gMe7C1ZkSud7tzDt3agIEWnEKxvVdosjn9Mc+kHE
	 CVQlHZrMOFz7VFYnUkBik8VEzAznijkFuafqeNatMhBedTxQ/64bMtdZmyjMSz3bG9
	 ZT13ofbZl2UJcTMQOrU3nfnylrwhWEIkn2fLSPjNWRzz8+t4l84kcd0rtbquWK2vcl
	 2Ux/BLBTd7oVBe5KKfJuvkWnw2Lwqoxc0YSCPdxYqQGY0B5gOcaWfzMPB0hQ9SCYIw
	 2bke+PpkQ3G3iwU1H51B7iASgQUH5avt9rFJIfoKiy1rNfRbIUhW0T2SHpOhFkkQQm
	 /nTpAJ9gsmoFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F355C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459805331.19095.16772680006884386153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918f93cda1d1e3554e5eba35ab31f11550f6f0f08fb2bc6234e8aa1a8bf8a657
Date: Sat, 01 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664598053
