Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA8439DBFE
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:27:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777897655; cv=none; b=GYY8J96vD5MkFpuxBSsfgsx/VxZO4N7sZVX2bwrH/34wYnaQ0/25yoviFcrOhmZ2XIEI3YxYlOQqr22BWNeEyBnz68NReoiMbmEzVkKCfVw9SWvOJuuXomUDWFLLyVw2wss+7MbOLdoe5OHVY0YIkvXPKPPYtZlXbEkm22iAQsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777897655; c=relaxed/simple;
	bh=uU6fAq+8FrFmygoL9WDTnwB+BKvdYNo9OhMP71wEJjc=;
	h=To:Subject:From:Message-Id:Date; b=hmNj/dNt15C7x3G4mZt7NrfVCPFsWGWnpnooLxBoOVc/XFqg1HztmH9WOMM5MCUds7GX+jZ+bMLgWJCzoGs2plt6x4EZ1pHENZ+4bFwRe1CkPOBnOQ8jrsVXQcWOCZTWYjydkGUsTpwnPDg7ILDaDvlo4ZorSYhiUwvEY6F7GW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAIdyN8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAIdyN8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD702C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777897653;
	bh=uU6fAq+8FrFmygoL9WDTnwB+BKvdYNo9OhMP71wEJjc=;
	h=To:Subject:From:Date:From;
	b=oAIdyN8DOdQ1/64sOETwtYnlTiFnkmoXiy0ntU4/H3MALsrUKhaq4zKZHDdZCzRso
	 GwYA5fLo5cOnxB8gRUjF5Bn8uoB78CkYoancw9kPzf+VGwZ+YXWrN4U3zzkbg4xWT6
	 z9MXL3a3CspTQpz3IqWGbUub12PvSQXO1GtQaBpV8TiAHerTz3wW3gTC+EEm9MKlYR
	 A4tpgOx5BZ2wM7y2oeNLyvswAhFzlXXf3aNlvSXBASq8p+aJf8KFbuE9CF+Ih+Slgo
	 8kNODVwo1kgykztK7U+Cqzan7Zi4LoMivJ/aZ/JVXov7ef6iRDjeS2H8zg/mnDKGZI
	 OBulbr6agGFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3EFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789765368.27400.5200311573537479099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b7b3d65b845d5daf7dd7dfbe198e49f1e52632d7eee3179a4baf5ec29b1f475
Date: Mon, 04 May 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777897653
