Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F011D5174
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769291034; cv=none; b=i3MxNvk6lfM0QVd9FJElEJ4qdpPKEhggUNZS1eavChsrSGSbXg1BfS7i87nAoovDGeRYqpBzdJQKkQ85fO+gnO0H73ZPd0S8GNul6CwAd7fwdJ1AtVYd6sVQSqGYm/18cxOQ5nJzqbB7PTTTMdGPvg/UJhAWMaGM0yoPYIyTTjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769291034; c=relaxed/simple;
	bh=T3WlzNu2uKoZ1sumroEe5dat29TtQDviJrE2UKMRXfI=;
	h=To:Subject:From:Message-Id:Date; b=O/a7B1/fVuyrFMa+mmJS4DP68ChQZxIFttj9zZBZ4eFzEmQpGRxexm+unVe4E+VMOm8MJiL2FypRqNxPDLWVH7UpHQ0H/Xr04kQs1x2jvyqtIUaGYMUfYStU49aZpWPn4+PYYk1DTpApKmVyY65B0emATLyLI5Wf8GQ1RFLQL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EatOSHhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EatOSHhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEB2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769291033;
	bh=T3WlzNu2uKoZ1sumroEe5dat29TtQDviJrE2UKMRXfI=;
	h=To:Subject:From:Date:From;
	b=EatOSHhwfd1KpA2TfVQt87X2YKz9YRFtbh2rvvIz1B8NbZ7/kuMFxiywKrzW5CaXf
	 IGgZEdUVYIWmnPierg6hSCx5hpEGL9kfAOAWyPPB82qaB7p6zfGbtI7SdLWLV18VKW
	 yT+FIOsDAgeR0F6wYoJXHusNHS6/oGWUGdhd26XQzT3KnXUZhhAiOcdmLgXwiAcJ8D
	 N9RHE7L31vJ0yEJLXRUrn7yt48k2k+Cr1Tdr0bvmKNTKcUJ7sW2BaYqA2c7mKiVoO0
	 cGsMfCQU6v7W739eke886wP3CXVcteYSXw/CHVuIg37qFyzHsbAGAoNh/MClYotTF2
	 tKonwyzZw7kGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7BDD715FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929103361.28749.18155697448677502301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a6f4cc3b3a35726a0200f0f0eb41ca0646b1eb0214643c1d9813c36e8bf4dd
Date: Sat, 24 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769291033
