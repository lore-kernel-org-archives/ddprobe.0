Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80539B
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoklawaj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 830B6C433C8
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699235296;
	bh=9u0UbIZ9VJlL7EkcopSuIWMMTJzAeKRllb9zfjDIsF0=;
	h=To:Subject:From:Date:From;
	b=uoklawajYgBjM6Da+g0DLcXWZhl/cba+lPo9ueWxFZeNwylTvtAgja9/8w5yICN/k
	 93jsiYL1OgAluJO+JSyVCyYhrzHI9pXtWsk+tj5PJtztlYr94ZJ5/H7sHYo70nPO0Q
	 WibHgxhrT1do5vIBgDY1kt8b1K3IM4Y5INjfvAF79QGWIP4T6Q4VxZSdfZpUIFhqK+
	 mM+iVndATuPVJZrQHs5BDBeki4uxJdETaYCR7+Xd8HqvIx1UR4lFeOO5VfgT39v3t6
	 HoKyVYGMk+Wc/7D6VxzsHTSdr98oJusNvYQUXzZJh+Eee3hwejVHIZEWR1T9MX3ASR
	 seALb3h5z6kNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A28C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169923529638.17029.2053020102658951910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530f9e783ec52b1280d592a286528c67bb2ec4278148e47870dd654113f71ded
Date: Mon, 06 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699235296
