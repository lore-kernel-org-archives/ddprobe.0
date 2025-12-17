Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2969E285C85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765995234; cv=none; b=nwZagiiUT3V5B4qJEmmy+8u7ktCa3OUt7NoShHzNi3uX3VkrA57nUUPJy6HCACKyIC9kS1iaaUXZTZRqxTGsPt6xm5sRTcmjd2QqvXtF3bBH/Uiy/bRPbBtG5CeKWlN8mjLNzyBARO4awJ1FZHQeRgIiRJnsMS3y3dLJIY+rurE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765995234; c=relaxed/simple;
	bh=jrUHbIH5mH5gGn1cvDORc2LxCofy6q5RyMon5jSahX4=;
	h=To:Subject:From:Message-Id:Date; b=lZw8vSUzf3bRPyJ+3cbkoqb53K6R3F2ZRq82z9lEEwmyGOAGZz2RlY3VDux6TP+p+bki3TEi6hbvGBItgwQJnQYtDfcuqLma1OJYqyVPn7RdV8vOflXn6fF96CiQpe23GoiXh+juRIbbCwpTxKyx1HVW37KXcAYE6DpgHzv1aDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVKepNm7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVKepNm7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA2FC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765995233;
	bh=jrUHbIH5mH5gGn1cvDORc2LxCofy6q5RyMon5jSahX4=;
	h=To:Subject:From:Date:From;
	b=dVKepNm7awZUOopYaY890j0zYVL7L0laSbff+hwIDlB4bHcO6RZ+iCo6GCVSaJoh9
	 dPVbBTh2UaGbXGEY3Suv0+pd341Pg8//k0fo0E4qLQPjDjP03NUiR3nfHl/MJf1dmC
	 Qers1rJNQDQx1Of5RVrqukCSCuXmDPM18ku1ICFf3LUzQuONv6X7A/HqXaZBxXUK5/
	 ChofNuFLYuMVBCS4wMDXr/ijbIi2xWBoP5WFw2SC4kfZcYTEQAJ9AXHkrBYRO2auVL
	 WayxMwSQ9BSY/gB1mMksOlA7lkHe16CW7rRrKSj9fpnPcGbfFSpaUqtMGQJ+QSbhh8
	 xiiaQRTZLyLZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD76D66B80
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599523364.30242.13399145699191027826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245dc2e64b1d2049351ca759660ba6214238afb2fa93a31ad36d87d362575bcc
Date: Wed, 17 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765995233
