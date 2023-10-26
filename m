Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FA42E3E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwDwFlsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A4DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698343096;
	bh=QhMONNtQUIB6oAS7+ZkAmmLki3pwMZHP5N5WS1O0bog=;
	h=To:Subject:From:Date:From;
	b=PwDwFlsBWIGyV8g74uoNwcdzIWUyaX7EOuk+vhKXrGbkGVgb8IbPINIfPxnDqFFej
	 KirRTokEdKr/ortIvquqmT/GegHw+I3ZGHmfVQKK98rk5FIXgZmtJhqNGdzCtnwUnL
	 OvJcmzW8honyIdwHj7ufkRo0LWZ8fozGv0SSSPpes0gDA34bxCM7gMe/ZSgUiGFYNZ
	 7aS2iPsCtf0u2qix4vsbzIKkWJg4xSXkAAeLetig8a0pf4C9Y2y3C2WHOf3Nuhpj8R
	 fIYc7GRcNss//P3GPY8iP5FaogOSO0l2+DOikvVTrwko5EOlKT3JgE0swuw+OtuwYB
	 R3mHSzmgsRtOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A142C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169834309641.22010.2779587069763116018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7471ce73a73ac282e1fa4bf65f9194145061df3d25a22fad633731d392ca2c0e
Date: Thu, 26 Oct 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698343096
