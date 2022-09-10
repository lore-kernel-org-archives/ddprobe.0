Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67117E4
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0DBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662780053;
	bh=8N0b/pRvJQ9bA8oSmUC+zklx6yvGcUtv5DtB47JRf38=;
	h=To:Subject:From:Date:From;
	b=aJnEVmas3+SjyaWnOmbifIKK+XEuUwJjLAfKV8XXFav48Y/zseQlct2rpeJrL21lD
	 FMsdmdt5wtmQLcET3kVaQEfnhBDI6Tl2RYQwTT22ktmzMj5QsagQnT3aU/W6ZM0c9n
	 jSBihOQ/9gP3NyolDQ2+XF9A6Al5tcncV3pNw5/TsNEek8o+k/4ljkwHa0RdECl3h5
	 mmrNPi+nNAdss0mBdShmrjSwNrosGPdUKKYtsQh+HILdJyfoV3x26Ax3Sye5vAhNJu
	 cUcSMxoEy+T3WGlFS4FP//8OplttfXiB/NHgSCMxvJ08WPbXhTjF/z55rRhrGqkH2J
	 v1D1MuYfSpnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55665ECAAA1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166278005334.12567.4640895655063759244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107578b92458bc70c5ee9df839f9936b55d485997d0e36b0f59cdccfa066d7c4
Date: Sat, 10 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662780053
