Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9AF1E32A2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764336774; cv=none; b=mFFyt/EQnp4u44or7EtcRP1+e1Bu8vjynAeFhGgMpETCqx6Y8EI52XgAutVRMY9IenB6AQ1ID4nGq8pLS+scoTXHIOeelsIh/q8zFiG1fgogJUrPrbkv2kRLwc6zr6SUv7QGzkSsx5eXKbH5njb1rn+g7Y2QcuUNEKZgPQt73oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764336774; c=relaxed/simple;
	bh=PuBrfJgB/mDo8LXhsf4eLLQyjuefHaJZrI9dn33/e1c=;
	h=To:Subject:From:Message-Id:Date; b=JlIqpdhlONDpIBv88KuNwrJ+qJmfjPSVuR2znA5TLeYyKPqfM2Fzzopo4j+dNwLLWt6FTAF1RxNH8Zwb2NVVGNCQZXbD+0vjLcz4A3tX6dd5R3/oHJ9gtvj6Ys2WRUrrB2ysGE78C4OOJi8ugPPTbtsVWhGvYyx1Y+Vv3eX0Dp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EF7vRmLq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EF7vRmLq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46CBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764336773;
	bh=PuBrfJgB/mDo8LXhsf4eLLQyjuefHaJZrI9dn33/e1c=;
	h=To:Subject:From:Date:From;
	b=EF7vRmLq8VKLfQOMAZjEIHZ2b4/U9GhzS+sbU5eKWNFYqPc6QNxrhKSsuASE81ocV
	 m2/vWwUe0Fs0CFWgaO1vdB13GrrbqfIy9geqdNB2h8IETdRLpFfjjAd/cDC7C8szNr
	 K642z8CTc5+Ou+ia3r7LpfxZI56kALs9WfH4HWj5CIBFJxJQSDulaPr9LhDdxio8HW
	 LSPCl+EXz7jKippoyRhySbi7pmywwmwr7TdtjH6fGRSMUfEDp2boR2mQJkXrcIbS43
	 ySVf2/6imr2pNg4XykuXut8a+fVqSLKu2Dbu2K11he+hB0k42ieP6hqyGbRwQsJ+X3
	 JUXGPVG45meiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD5CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433677358.16342.16308334358364324524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ee22dc3e4540c8f06734f29dfff6f1549a5c4fad449a3ceb4a9920da2b1bf4
Date: Fri, 28 Nov 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764336773
