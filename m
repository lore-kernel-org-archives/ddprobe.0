Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D2E6ADC
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0181C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682538425;
	bh=HkPm7Di3eySIn1qbH9TVRTS3Whfd6kLoijkeW1qog+M=;
	h=To:Subject:From:Date:From;
	b=oE/G9VwFZZtVsm+PjQ+5SJTacAweeHE2TsiiHM9qclbohb9R7z99+LVxB137puROl
	 SdPT2MVTqWBclyhhPC79fWUFvo5ISxJyUcYo91EBicXcfo4wdn9wdBsJZc5iLjMsKj
	 9aRKp47jvX01MqKrMpR4WApHDWyyLqn5U8XkULEEFNlRd0w89QAbuppyRsr4DfsZeT
	 zqZuiTDwlvz/mYTnCkoeTZJxf5FT9q9s83ptYugJYh8/O8s0xzuaV5mmWkVwWiJ3Ka
	 tG3+sOUpF4aLfVSLKremR3hdbVK2RXaqbLMSUOVFCP8vFU6xejffkgLQ1JgyF+q/7y
	 twBjh+3z+kZrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC8AC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253842576.22103.2407898013793755800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7da0562af3d15d35d1622a181394e29d883d5681e2eb5ece0cc5966132492ad3
Date: Wed, 26 Apr 2023 19:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682538425
