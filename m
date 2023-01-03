Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95D18F6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D44C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672783287;
	bh=dJE33h7R3u65H8ohtp00S/tT5wMEUVhT7+DJ6MGvGgw=;
	h=To:Subject:From:Date:From;
	b=dSvtGONHHeAsf+LNbxxSE+7S4VFDZX5Q5BeLITJoO0OOE2nAG9nbArlm6hzdFJ6vI
	 B4tMawmm4F8HIBDxkLfk7v3ubc7BiZO17CTbBxpanDo42qHFNskPTbxN9ZCTIgOxvc
	 qDCHZCum4tZj8/KnNLQavACMmaNBvvor+jNk6kKKAivUbjLgqMKDjDMll36SfUuMBj
	 +OhC2m5T9SyKL08pZc27M1wPD40oWCfMNguHuSEXqq3z6NacQC6b73HIEPd6MJOKPc
	 Wz+qyJNmtgKTEaM+BQpGIfX+J62tZPkzG8za2JW/TWct9hJ+JRIEMHe9b1qWPMQtud
	 mXnQQgGwg6Cuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A053C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278328741.23841.9915205855318473721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c63eae9050dc4e29c96f364f9daaba36342051833b5e3899e269fa649627139
Date: Tue, 03 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672783287
