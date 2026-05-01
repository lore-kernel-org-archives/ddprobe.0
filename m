Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3064523E25B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777661254; cv=none; b=gkHkQ5xC6n9/zvjemXZKRkb5fwQm+mQOBuwpCrKDdy2jD1IbV2zfGxjQ/QuY6M4h4OcVc0dGWcD0DPJ4ega6I8u8yZLlBHxAo3W4gihhirbIgVCvzKmlp+7IQak2mNWQ5B1LJWC6xbV45vq6kKgCEZkmUFC676AKAxxiVgHkiiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777661254; c=relaxed/simple;
	bh=eZ0uaB3eGAC0BEg78tKyrJsBZM6rFlGcOCZRB9haX7o=;
	h=To:Subject:From:Message-Id:Date; b=Zdsla6O3zRw/A9z/LSSg8KZULN4Ja8Uv5aqq+LJbecazOvPCqqvX10J9KIV8vWhULRyYOa8E2KhQVmUE4kyqv//Fx6BUupWtRxathn8oRe+jMUAdHoGCX7iMJo+pHUaKCOPKCJVdFCIKq0gy3PLosLhq9J2G1xqIquyLe9Avjdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFzXd+LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFzXd+LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58DBC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777661253;
	bh=eZ0uaB3eGAC0BEg78tKyrJsBZM6rFlGcOCZRB9haX7o=;
	h=To:Subject:From:Date:From;
	b=GFzXd+LWda2LIU0RDbrF5OszG02sYj2kH0tu0G5XTnpnAj/FHj5LIEWVKiLoTbeBo
	 oxGWyYjHiXlO09420cyWjoiLIQKYmCzWuY+mvTH9t4/ZkuM49CS4uXJhCyHXlrkNjn
	 Xj2/k+p45F1Rs+/uigEkNhAnnuOeZ9WME7bLlG3+6UFjc5dCEgpmBFd1GTY0p/wnJ7
	 4NBl7wNZHI0ym0WG8TjhF+4/QACP/kjqpqEQBOz5WKHGca3XLDHWI5k9+vZP68zghy
	 SH+p8XLO74cV9ptvlSumhzsxycJg50wv3mLgb5Yf4g6ydHrMt3aHwi77vSw505N284
	 8ENqM1ZukRSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A64CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766125370.29133.14944981124345099435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b307a67c899f348f044cb4398f5113a63d259216c502c035015ff3b621efe1
Date: Fri, 01 May 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777661253
