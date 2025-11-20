Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342AB218827
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763670714; cv=none; b=qa96Pb9WdkPuFz2M7em/dK7x3MUbd/1Y3WbRhrL6ZSBrCyjoJMnxJqXwI2KvOg45O+SzlpTCakxlM4RHs3b4Wl0DKvjO4/D7SBSUbK0FP/iBKVCI7Jf/8g2+O7C0qf5XYSD5XbQEKnRmprupYUwZ3FpXa4OnsAZgmCyeoLolWi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763670714; c=relaxed/simple;
	bh=mfCYUgs1fR2wqErboob7KDZagOlxv3RbDyKmfFeRrqg=;
	h=To:Subject:From:Message-Id:Date; b=V2DPDSDq3zejT/z2IlZsdGWNbyV8+7+WLi3rP9owGRcddjKmH4rRu/RRehu0xcxuLd/Z5pVr1uwQikATQdZDbbQ2Z+Vq/fY14ixpgLLn46EZkA/eA+MjHWpJP0zJWzK/sjDI3O9kQDq0kU3zoiP3YOkl0PgkZ0P8nsxVHlofSOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dISZaUTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dISZaUTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC63C116B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763670713;
	bh=mfCYUgs1fR2wqErboob7KDZagOlxv3RbDyKmfFeRrqg=;
	h=To:Subject:From:Date:From;
	b=dISZaUTc+/MKl+DrqtULP+mcmynrM5mVa8PXCzTPbcoCuTvVOo8B5EhL3EKFCPMe8
	 tIkpBUTKM0QT0gF71p76+KA5c1GhHxzuUx0ChZw4usb2GV08nPK/di+Z5OjhA7J4eR
	 sRKgMiNEHlMQK6Rwo+H0QOpMEWbgxU9lNs6k495CzIWrfeUM0XBCMDeUlscLLbnQUj
	 vQiWVu5TbcU+ntNZ1jI0CAa6Yzqs6EDoqN6p/aUnGHrr27F234tXafmC/5ggW/YERN
	 98XMCPkTdutg74qjGbdnRuV/Qv8UKZ+u2A8VP305Vzad8MyxEX48T2022i7F4vyqz+
	 1QMmITz3M002w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA38CF885D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367071362.26300.14101192289627535975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f51af7725810a1af8e710375c586d30bda0da8393ac926087ee64860fa7a37
Date: Thu, 20 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763670713
