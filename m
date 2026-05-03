Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E18396B98
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777831654; cv=none; b=WtOPMmX+qR1iUAZm5AjUE9L5/UHElPt7RLK5OzYngHonRz6wn7rF4YoanMHc3/ydtoukrBYdVMujScHX8KIxPWGCJ7GGjbtWc00Ik/McwXpCCFhdVYKuDHRIsXVK6C90EPCNhOv6Sx9egADoYRVWi1dSJzB+KQFI5GUinAQnOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777831654; c=relaxed/simple;
	bh=uiK8bkOAlJbr2veoTJKtsBYvRpfl1whOawR6x8NZoEU=;
	h=To:Subject:From:Message-Id:Date; b=RoeM8dWaHpia/w1nK5M+uini+zPbaBOyhWZbh2/9APZ4L/0gy16gYFzuf7pAN8+nNqXVZznRaSzNogt1ad2CgnFoATbVBr0cg68Qt84xR29AN5nUW6T/LRrW6yyHPwF6desYpoc/IOqR9I/mX6p3Yh6VLQcQzUlrKnrHsOTW2ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKQ9jW/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKQ9jW/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03EEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777831653;
	bh=uiK8bkOAlJbr2veoTJKtsBYvRpfl1whOawR6x8NZoEU=;
	h=To:Subject:From:Date:From;
	b=vKQ9jW/SU3/BaeM/U8oDHKbIWdDKig00IVNJLU1Xujfyx4LBGXPGK87LNum04mPDC
	 DXsFC0s6VcC4iwKfGtyoYCi2DbCgEEnIEt1W4lH4XNHMrgdrQgjMNhLoPwTpGPV2NW
	 YKmvWAJbLf2lxgik05zNNblbG8Wtw9TmyMGSdHkB9p6StE2QmHw/9BtHkOZuW2UuHi
	 NRzaDcGe0iIJ4Xre0YeMJP8mSNFZO5ozvM3qvEVlYiUBBxNT/ZFCWlAry6tegk6iDY
	 iK0bzsOGqYdoTSULzAkDjaFC5yP8wJXETKBXoHdkKRR1PUIBZvJ94lA0653pq1OheV
	 Pf3wLBsbJcKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE66DFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177783165368.7727.16945250103874188830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2406a64bf17db709470d5446771528329e9de075b817787106470ac3db8d835c
Date: Sun, 03 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777831653
