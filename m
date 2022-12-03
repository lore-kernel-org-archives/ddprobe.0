Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA7D2F28
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D738C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670085654;
	bh=lhEod/tY2RMakKfO1QVIV1MBBpU0GaGbnUMTomYYCTU=;
	h=To:Subject:From:Date:From;
	b=hPBBDrwKoAvJ8HdMiBROuKfhxwQYx0rIjq6CjeSzuBTglXn1rkkGVt+RqDI+NyHyu
	 4rjk/+kAdsWB74xrWL+PJlmirQrBJSVoFdztmF4OcTEeyXIrx6Z2+PYt0RJlIMUybQ
	 QOB/1byJHUJPViAqPoncAChF8Oz2fxAtIAlm9xpiuCUS17gzwxJP4L0lAtm26NxMDv
	 Z7kEGGGo2sV+u+Gm+Z1N8C94YFsW9/seyUSeuvYsRW1L0BSZLc40/cMQ9BZy3ZR+4M
	 gRVv0I0QizViddQFw1T4rvit1R4WFOXtN8CWQq2Pf7QEuPjf9CTv+Pr1DZLxRB4deO
	 atLbLwgDtzixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C97C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167008565433.21930.14630245024144440924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c574366f63c8db65cf66d61f6062d4133fef395c79089c209a07e5c7ac4cc3c
Date: Sat, 03 Dec 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670085654
