Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFF77E6
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723854954; cv=none; b=j4RA8FYLsMjDxPxMwcx4eW75TPbRamAdLZUIS92Es8pSQtRVx6uyJAQwvtoL1wPesxxyWxN2/GTX2rI1DBr+eLc3rgNdZiuaOV2dkwhID9lAqPxOfuq25qjLpF79NmBm6WLEczOz2YbL0EcfjDij4gkncZx1stt96LeT3PWreEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723854954; c=relaxed/simple;
	bh=ZuZHFzA3++Gt0Uz0Je7iuDGd8y4TLu4koBMML8rsXYw=;
	h=To:Subject:From:Message-Id:Date; b=gblzrKHPZCrzeIJuggWN9WVZYrZW97mqXv1la0wTLrMlsJn3oqoOIHIIV9+KEtrSTrBbQln5b2DlQanAh2qPFRntnyfwN8CYLJtqpgLW8TrjPnOzkC1QVfND+NYR6erXXlN1bBk+3U4L2QjPnSYYIgZFkbvXwI1HETaU7YzqyjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYvhrABb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYvhrABb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EA8C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723854953;
	bh=ZuZHFzA3++Gt0Uz0Je7iuDGd8y4TLu4koBMML8rsXYw=;
	h=To:Subject:From:Date:From;
	b=MYvhrABbunKRFKiI2p8xwr+xb5UEy1FR9GH9tUXFnByNshlR46iJAA3iERI1AHNhO
	 0chCvyWGKlm5raDDdDO2zMkcMtUD1ww5iYy3RN42EMOyIIJkaZtBYV03Zk2RPeVwJS
	 F0Vr7pgzMpvGN5KfWPeY3LDISHdx3moPK9EtFm1ZBKy5uq8uhe9MgFZsd0LShekRzu
	 zpGqT+aDQf4F/c0Qr9zKm4RkoUGD2s0b1AVUq2XQiN20dmtyjpOgwZaycdZZHg2gCP
	 5b2XcpaDhmvBBEwL/PvzXPpBFplZe6HSjIFKuhbuE/p0mHIpkEIGFsmDyh64mHs4yS
	 oYZkQvs2xJp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C68C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172385495359.20367.12171140699084113560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d5dcf3ccd24d27ae1a63fc0c25ae47daa96af0ff6cf5b092b8163b07e0bdc7
Date: Sat, 17 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723854953
