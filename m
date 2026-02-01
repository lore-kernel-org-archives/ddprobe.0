Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1749B2877CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769936034; cv=none; b=eHhotx4/g9jwpS25qFrv/+oX0G80wyDuc+lUKNZ7ZCXpk6shoXfHqWhR7uh32tLu9aCDFBJjsL4Rp4boYTVc/ZkSFUrQ/uEdrTJ6b8MQM5WZrLzxswllQsrBrTTmHPicPXaDV7jdbCmSWPyF+EsL3jSaD/gQFU8+A/7WajQodfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769936034; c=relaxed/simple;
	bh=EdZkUEw6/kI7C95qNoL2sjwWCCS8wq/pf/VW7WAHKgc=;
	h=To:Subject:From:Message-Id:Date; b=pbygbcjRE8HiLfK48hAnO9v8WxEoc1NAORYIRcYjzEbK97LRuN9CFx+V/GP2xeLjXr7PqBh0ml2f/WBo+HS2YA0VXq6/+leOQNnFWMJiRYW8yHL9Km75wL8FVaxaSvnUWDt8ulXxB+1bsMVmTqxF2Xp9ZEdRZgLCElUEGOalBXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d1ORSoWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d1ORSoWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD232C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769936033;
	bh=EdZkUEw6/kI7C95qNoL2sjwWCCS8wq/pf/VW7WAHKgc=;
	h=To:Subject:From:Date:From;
	b=d1ORSoWxzZUipFjxrdQdz1tdF5OJoGzvAy9mB+XuPCha+oOo8aRdIQC9XHlW5Ca8w
	 4E+zN3EVEgR8XZaXLCOdh4Vu0r7a9TPedkvGCkbx0foExaVcPqndp49Qu2hVJiJ9FH
	 slyNwGGOm8qu9Td3VbSckzl8OAbQHXEg7UmFbpUkdRlyeDVqF5NAQ9GbzCSLMKhrHW
	 R/iFFY04I2POjr0NA0YsgPuUBFyDEbnuf4KQzXlfk9dNVTQeksbLTY+Arew5u8CrS8
	 HbV0b46jBNkrF+/dkYX8b1RnxFsYbX9cvv1XpEZpIP/vlLXD38j+RVTzQ060e2c3xC
	 opyTjXJWsgGCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3F4E7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993603357.9240.10080589884601696780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73756e4a63eac62a62418ddc1f1f069982cb70379dc60a623f9590640a8ebc41
Date: Sun, 01 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769936033
