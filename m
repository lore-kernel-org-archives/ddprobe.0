Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F09D29D26E
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774223094; cv=none; b=Ff/ysZ6h/h+ZCnIOoOVqm34VlN7Q0UuhlXo31DnFsUSrkvHj9Ocf5sBLzPkIaAyly9eQs0qQQ8HJYdaOo8SsnsKLY9ZXTdwQsJ+U1dZzl0WAXMAp1hEAIQ8j4qGgHl7X/kQuZTcz3VNvDb4R465ktCPpx4Mb/+zNA2scLz4vs7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774223094; c=relaxed/simple;
	bh=SoR/NMdRyzt0bZrKkdQnT4WALXU+UXON4w6ZEaj7SBw=;
	h=To:Subject:From:Message-Id:Date; b=QQv+VayZfHkJNuuBvkxEuZWl3GQqMAxbO/E51Ho9UeVKnIUJLQO+YcUXPBjyPOho6Pj6HsDoIFZNeI89nW92W1M3yV3KZ0QKPjSEdr1Nf0N04Jf7dEogpZFLDu5UXo8KNzYGcyWep2abDIa4CKPyACSpT7wYy0EKLhcQx6YlchM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2pRwP9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2pRwP9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD354C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774223093;
	bh=SoR/NMdRyzt0bZrKkdQnT4WALXU+UXON4w6ZEaj7SBw=;
	h=To:Subject:From:Date:From;
	b=a2pRwP9tSdT1CfvOtpLSjBCZz3YL7gnXNsC/CkGth0u8dpiQZPSpbcyO75hq5ttxV
	 mD4/ezlyXix9MZZ6mhf8aH9pEkt+iK3PAleY6x7AXo/ebCeRxlxoOR45I5/aMysPi0
	 ZEawmd6RIoCgPRu2YMvrO2v/wKNTctAPzqU0/9pc6WpO21yieBna1cz3Ez+CLBTYOf
	 nk+zjd9HNo0NyPtHnFBDNuTVnxuknsUdGWJaXLfGxq5ZhUE/8HaHPYI+URCATQlLxN
	 JnIcAE0YrVX0ARd/XolxeuGIVZCQV2PCknysRJ1gPFd7UCDUiD+Vn6ltW9dKlUOBOY
	 vNTiHpnPzf8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9851BD58CA3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422309358.3328.4643572335307304491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51273b613076990e9ac93732bc3618800865767b473524db0719fe4de594da23
Date: Sun, 22 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774223093
