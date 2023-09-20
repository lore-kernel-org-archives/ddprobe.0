Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E2A111BB
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC3A6C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695206708;
	bh=F6c6q/ri7RgnPr2vpjoS6JACaUBfCwL4EjrCC1UZDIw=;
	h=To:Subject:From:Date:From;
	b=FB7tZCKAQ1Toosk+WBmkL3aXaQ2oZTtv9HkhnZKjvabVr9RhpsjrPc8ysEF2uyei6
	 CeffkU60zSdQMHs2m3lSxvwjMhMFn3MZMeFX+TOkpy0SxszgJa2zpJlSXf3ZrRDPyx
	 U1Zd+ABx74RV9x7kMxSvT2fSST5/V8d/Kh5aZulTxcifxWfE2lJ7/eef8OXBFjNSHt
	 Iaals8xL7Ls5SaiIYHTdAKgzkoHJ/42wunFU2rjIRvJvaiBJyaFH63kJoyG7mQIcKA
	 GIG+v6m1IE0D6n0DtMmPH1SniBFiF6//2mcd/DON0M8IiMqXHo0RFm9YEJMAfKZnLp
	 vjhHwV7FSwIKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A430CCE79C2
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169520670866.26823.17914020180604646643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8df6837dd8e88b213c806597d705de47111e7552a16c919991adf5f1286a52c
Date: Wed, 20 Sep 2023 10:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695206708
