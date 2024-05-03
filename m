Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B354848A
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714734743; cv=none; b=ptt5Lwgx19ywx6NKTHygpRn44hu7jllbU/5Dh9jVZSfOWGdlN7IZqsk7WXPAHr5v5C7B5bKAQ+TzfcBBKeHe9RoTDvBm+Iz8QtH5OQfO1m4fMFJ+kulmBY5PjmcWLB+dnthhfP3plJmwMb1w8yrfZ0w8HHusvVh/BoPljcm6uMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714734743; c=relaxed/simple;
	bh=HYZhb2aJf8unsyQZARpSjFtOg4SHxwd0xTjR7rT3Mbs=;
	h=To:Subject:From:Message-Id:Date; b=ikJfWm8bFVEUi0uLBOpooFvBDue0vbdW7E2IuuNRL+7YI/PjY+QBQpPBEQiZcdOtOf3SoTs3kgSXUyU6i3FvI+WVRTyW4NNTrIygVKVEpyc7Pifdpodq33ozVYst4Ut5/NPzyED88WAr++ajYYkR2qn+1++Vt6LbG4sWl2svTyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqReGmgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqReGmgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBF1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714734742;
	bh=HYZhb2aJf8unsyQZARpSjFtOg4SHxwd0xTjR7rT3Mbs=;
	h=To:Subject:From:Date:From;
	b=CqReGmgvGK8xuHf5WpizX7tnZy+LdTvLdMzSKRUULIZ1PftNTOcNNVTFDo3Atlyam
	 kol+b5j6RT/omrRf4ZRZZ6Z99A0ti9M/60mT4OJeKRycTUzroukT+hwt+uNJ/M3WvV
	 yjoI/WyVpWNmYr9hrKlKeOL0UL4SHHtN8vW/vrzcU++VqbYN1UBGP+recskP7yjU1W
	 69F4IyKxA4A+tmkq0DVyDjGpjazDX9QUiKOEkeJnP3tkcUZOvmKpGe2vjEFIr9yixN
	 x7B7KTdOxhluYm/hgM1K+OeWHNj5/gbh/Rfxmvr36gG37+Eko6GUwlz3k2RBxVCdWj
	 1kGcnCZT8LTQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1A3C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171473474283.12194.8990537465888102141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811046a9bd55ce456773f1de00ef5b224658acf7690bdda31046fb2e6edd3fc4
Date: Fri, 03 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714734742
