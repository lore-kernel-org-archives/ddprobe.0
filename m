Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96B85664
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0F0C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670356854;
	bh=Ma2ZFMXEI97ERNgvhfh0NuLN7xq+4pgB4IxcCEtgtDg=;
	h=To:Subject:From:Date:From;
	b=kT7Cicv5QNbXx7xzs7yMvTkUzXksfnkBZHvpkc9KpPYQ2lJLIu0c38NmeFnAbdM74
	 2b8QKLykhzYKWtfQ4znmjgHOUIs6MKddF7Ta9bk2ZqVDLpqnSAdRPfeJazqb9r3uX3
	 6Uh/KVyiaWBkeHW7ii7mAC2e+RJ3DcCKQUFisbKRxHR8COVmA35nZg12yN+qeFrzP2
	 645DnOtPWv5ZesAnqPDYldMtd1pTgMFK8cVks6nJ1vkzMuCS5y8FSTrnd332YEc8vY
	 QkXCW00U29L/GlKZTyEGdwAUJKMGA99Ifjfp4GV2yPj8lioKy3fRHS0kDD04Eq04Ns
	 39SwplmpK/aqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58307C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035685435.30462.7511635934930552710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5613f77b66137f60594676b264dd6a4fdc195299b421c2a82ef935509efd470b
Date: Tue, 06 Dec 2022 20:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670356854
