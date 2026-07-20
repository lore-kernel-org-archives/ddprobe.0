Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53959265606
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784512714; cv=none; b=H4PDd9n+R1o9IA6GpC1zotriMraLFvkUJQZEdQtqmFoI+qbR5gCYtcwcioZJ7BY9TbLAHU2cCLnnk12SxXofzkIkBhDDxZI0Yut5YwUrluq/cE3AuAnFQtLAhy14x7t/Gf/b0jW8OsWmtwz6Q41Zqcd1UOtnKhf2Dr64tORgdlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784512714; c=relaxed/simple;
	bh=t4L690utJQLRXQxsi3Z5ZatgEKACzcaX5lSMSAnoLhg=;
	h=To:Subject:From:Message-Id:Date; b=oAfhmCHLciHHRH5WzgqAyxz4P3E0v1jTL5MM/eedz9yfwYYID/lFJz7XqRapt0kfaja0nRrEiTSv1fn/Ud9X8uJnfzmWCx+mT97CycoI8At6Sjj0KpGShmQk3bytjk+nI6xquLQcgEbMDAn+lzsVRYzX0diRwjCc2914CGTsRO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awAyW1C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awAyW1C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD102C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784512713;
	bh=t4L690utJQLRXQxsi3Z5ZatgEKACzcaX5lSMSAnoLhg=;
	h=To:Subject:From:Date:From;
	b=awAyW1C37Hv41sKPwbv4kKrwn5yo2u4eqPuRf1JJWO+1Bg3+sjVjmWLB5X+LG+Frh
	 04NMJsUU1eDhC1dsa8yw90WbDxBCDt+MsyGeHhB7xgO1+qTTUVwn9Faedwc1rr/F9E
	 FB48m+cfJQAsE5TEFcF1KT2x9JUCF4immuW30LkOK3t8+d8CGTUp2V8CnSBV+jTN+7
	 iVZ89xNLWViITi9suYpHaRuDtZ5psjrxXM4tMG3fRvxyFuOa2zfgvJDv4EXFzMvlhY
	 mWOMsh/zVP+YGru8tKG9F+qxQ5v7UyJrKYG7Yi4RqeU5xynGoLo+EENqweXvI+gVf5
	 lT78J0AWavj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DD2C44512
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 01:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451271368.4869.14357443919810646314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e56cb04e2c78c0cd02ee0e2696249b01d17c3df433ca4a70cd3bcb6fb5dab41
Date: Mon, 20 Jul 2026 01:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784512713
