Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48553944B
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F057DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677608766;
	bh=B7PP3keon8bHZi2WTjzbgbPAXKOokf7AK6kVgnkJ4P4=;
	h=To:Subject:From:Date:From;
	b=mRpEGFCV4uzZ2VOKqGW+pNj4RLKrQxzv63sVr1c8wROTmO5lozUUuq/4PJlqtZdAy
	 wWoi8V8z9XwjuNRqzSkdpYz7r4YUNIqRUms5732eRAm3uou24DSbYNWtwzCvDeF0P9
	 tcQx2q9sW7sjKmtszEkWmgymjsuNeJrP8Iz/X3X3M/HpMHqO4QZ667vGyPMI+DiGwz
	 XdMBGD+Zg+2AOXsumPuQaUH1fYn6Ls7CQAC4TT9T2WF77rywwwB8Yy1sz/dkxMQYfK
	 lUQ6buGr0YMMxcou8Ng1d2fTe7bpcb/Xp5DCV0NejBThpuWsUkcVPA0hdaAjMpoGnU
	 bF5uyOR6ubu+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D516CC64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167760876586.12113.2074857765605559792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3541d313335f7eb7bac9645bab2b7ecca62659968afbe81900d4108dac09d223
Date: Tue, 28 Feb 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677608765
