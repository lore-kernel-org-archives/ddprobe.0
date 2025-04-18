Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366BE215066
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745007595; cv=none; b=Fdztl+DoZe5EBuofNJ2kZVY05HjLPfI5u/YmENQLx93zZbwCulpm2mq93ioYcUdpxItRHR5Qde2fdcSh8FHa0zQts2IJ88UFGQnhejxEF0GtLA/TxkHcTlYyk0I56MQXbK0qYhwQaJWEN8n/WDy7pBmBhheosyzxQNRGjUSG0cQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745007595; c=relaxed/simple;
	bh=rol6g5dR00jPAyeWvbqVgY+YCTar57TeJDxv0Fsk0w0=;
	h=To:Subject:From:Message-Id:Date; b=T00FBc+0ngPlLDxVIh9uK15yLuqbksC0El0XvNQbHeRyXEpCeECgeL5cLqV0WkjRBUdnC/iQnKHJlY6z1kevUZSqpQwVJ1Je2eVYH5aHkeC4+hqFrAxRgh2IcvH5w/u/84sMt4dGEKLZ8kCmbXGyohriEtkvndMG2wRiGyWYogw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGsb3Vz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGsb3Vz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC54C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745007593;
	bh=rol6g5dR00jPAyeWvbqVgY+YCTar57TeJDxv0Fsk0w0=;
	h=To:Subject:From:Date:From;
	b=WGsb3Vz66q2uDzccAFQk1OLkgRSYUr2zWvUHfVP62rGKypyQgLlLqy9j+BLArC+7X
	 lq4uNzMzYyAbBkyRpjk/r6zvPsgZPRh3LVJW6bgoqQZ8fKSQ7dhWXEcZlNA/lDjR9r
	 DcjRJmfMO8Huzy05TVeiWPia+AuRtQE5t7g2pGJl2Lrj1WO16em7SAdPi7jmgFUttV
	 Dh6A2NL0orqzcLgS6CC9Tx8MH2oiBzxZFfi82WRK5ohBqDhdTYcgmWw6Bm6rMdsVjp
	 Rk8MfjJ1kFEhJsjsEqyfRAJRnhB4VySqbhgkt+U/Bcdv889vAHPF4LwmIoBeUrNIcJ
	 9Khgh+ybkRBXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E7DC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500759359.533.12119786402062489240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79882758401d41b6d134515cad2c5ebdf36cf5bf3eaf0fbecf54567ada2a7a14
Date: Fri, 18 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745007593
