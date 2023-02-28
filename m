Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F02CA2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB156C4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677584165;
	bh=KfLSO26if5QgR7aIcyxaqyNxcoMHFLuDx/CAqysrRVk=;
	h=To:Subject:From:Date:From;
	b=pAP74AE3Y7su/+Usae0OAF9BhoVY+kd4SRNDN+uOto8DJNtKXEDEmrOJGOLzj4dRo
	 BkTZdDxHcMD74d4AxZ+lcK0rymKuoIUIBBk+XTPkd8yNU4Cvxxb73dYIoUYd1UN8wb
	 Y1krR2ZOneZivGLefAdbdwSoXjGLpmgl728wHJem83FoQasgTy/ENEGefBylPnG5QB
	 Xyk9/P39kGI8pkyeUyX7ydTUNzPvpo8ENe0cUDTEjkmm/mDs+TU4rjDFjtFYFjPUNv
	 x3jDYCUEJ6ycJIa4PoVRwKFxRoXV2rEoDMt/uOdXQLVHVBEfZaY90ZbFkmota6tI+z
	 qJ90U7uXJOT7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AA8C64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 11:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758416573.20884.7637033279175686383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61ede7707ead6aff165e03d625560910b757f3680379d1f600cc0fae8589cf0
Date: Tue, 28 Feb 2023 11:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677584165
