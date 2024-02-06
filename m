Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF5A12AADB
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707208697; cv=none; b=oJY569Q/2vAmkuvP9LzThI5D0RB1sZP1WxYVGjMW2kgO2Ib8adCESrWS0t2cheFn8qJjx0tg3KHvs1CRSD4xE/hUsu2qQlb4gERJkCKo+KojxU3LiEb2s60mqI1FM1i/u3yGFEDoS7ira5b9wvqu0dcaR6KFjRClGDnooF7Rpbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707208697; c=relaxed/simple;
	bh=F0n1aPDFZXTK/r1eoek4BKqNia1/kJbMm3KSJhJkq7g=;
	h=To:Subject:From:Message-Id:Date; b=j2C5I5VtDIkKacsmOVIvmCWI/mkWl14zw+3GSpNzWVi3mBfZuT1nEoJoBwU8JzMiBA6NCtOAnQmEs3Ef1TV5bUMN7OGZWA9pgU9Gy0bS/qegqZg+9mAYk/n+pHvrem60/SRpBlPPuTYNz3x1YQTTG412Y+D3+1U6nGQ7WzJyDZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7BrYFMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7BrYFMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F99FC433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707208696;
	bh=F0n1aPDFZXTK/r1eoek4BKqNia1/kJbMm3KSJhJkq7g=;
	h=To:Subject:From:Date:From;
	b=a7BrYFMFNiuDs8+obuSELtln5twV/kRtuCZ+HOrQCvaI9HXpxd/rIFzYPz6HlLo37
	 pqc6B2j+W63cwKASWJP8khYz3cAGpnbBHprOjazousRvrBbFxDFPgaXKU+/MvxSsFg
	 RNbDgupDZf/pD92cOClBjfRCQrSfrb6ccJeebmYyS/9yxqgjnh8kdpmS87i2cLfOvp
	 amlQhAVrwhRo4wQh//STrYxq3aYNrnZIoiG6/gM/tMPfQzY6nbMESI/dlEn1j8bjeT
	 NeqUie+1NGMaX/ro79vNQOqcqfnLM33K3sbOwglVBtrjRAbWCOlpI0HHfF7bjxiXQh
	 4V8p2WYSIVgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F54C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170720869639.8189.4084605497839276096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e4f6498d6344609d0203d90a397d991987d44cdb7675138dd38bc458802927
Date: Tue, 06 Feb 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707208696
