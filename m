Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A113AD58
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717985243; cv=none; b=Qdrg0RDIfwnKqY0ZJfjtKiHMoqqCK+p8Hk9/DLXMMIs1aeh9TTU4fFYd5RqXMYZucJ/u1YjQeKnoo3spf8N52/UjJCpYr2578TCUV5RNzXw3rvbCjLszvVffJ6E1pP7BEfbtHdazAm0K8u5c+wlYs1y90+xPP/RWqnp+sCnxRfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717985243; c=relaxed/simple;
	bh=JaDfs8B9vDATdcrKEB6u3jfhW5xJfHisMQv0grW9/JU=;
	h=To:Subject:From:Message-Id:Date; b=iDQ7SfHnJfXjyPAzgbbnVm7Qae9vlNkSuXIUzhpIQgFSSR6LMIsJeqe0KJvWFA2iG3m5cAfPz8C0Aypkb58XaZ9S2XaTEXwsUhTPv4ggw8QRlU8K0azIf/0Y3qW3aFHggalwaSC+tXfaEegf9Z67ezPE6uM+2/C8AcHKvz5g94g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4Y4ZXRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4Y4ZXRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7ABC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717985242;
	bh=JaDfs8B9vDATdcrKEB6u3jfhW5xJfHisMQv0grW9/JU=;
	h=To:Subject:From:Date:From;
	b=L4Y4ZXRz9WXTrzdDos6aMU4QKmojNR/JnxyQFm0cTlGsIuTJHE46RElnI4dD8u3N9
	 wRELp15WABPTSFsyD/UmzFQEFdT4BHHlob2LXTI0hRWi1wvFwIR7j0JUiZ6jdYLS6o
	 J7N+mke4jDCJbnW6gflRlI0DwAY8Yz8CEur3hljiaqDDYIkY8OwFXXl94xMpkJUWI1
	 8Y57zYUoSo3lQbzTVFWe4vknhtYAL9AsUgJTUO3kLVIiLT5lqDhRTqajLt8Jc3Zfvm
	 s5FB5D4C9ad27bFJN0P0uS/ltAHOZqCeOlsZXUnXbtCFdlTjwUjy8b4746KquuEg2p
	 dTkwvjswYF1rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CA0C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798524278.20321.10882983171187041958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143a294a261de749cb0fd8fe31bfe302152ff1519e4fe4f590de3ddb142f725a
Date: Mon, 10 Jun 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717985242
