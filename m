Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8313B288
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732397154; cv=none; b=VEQZFuaT4mMLuBRzsPYpAT5ZwdnNfnREG4paiaGR75gFfcqUH6+VKYuseHd1gA8gzFjTBoY2Lo1sHP3xAhxLI8d4IzNGoi9GKSSd7cIGj0j8wXqHxr5yLib2ONOGL9Bn8J/Ek35vcMXykIQmyXBNFzEqfYJE2AOx3AW3uu5DpQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732397154; c=relaxed/simple;
	bh=yhrVrNtU4j5ESc5ihNJIQ+Q+U+Zx5r8r6980+BgLR+k=;
	h=To:Subject:From:Message-Id:Date; b=BJaMdTFjOmo1+YqYE3bXHQN5Lu3MkgIooFVNWzbT9mba0ip89jmk3nOCA3DQky9HEvS7yMPFp3jaBAdbUEIH9guwBi5AGcMIQOFHyq6ILlHF+umFMgsYvGulD33qKZRhJ/m6m7K3ZGHm6UCjUY+/6fNEOCiH/n9Ix6H2CvNgp3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+iUb7KZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+iUb7KZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E38C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732397153;
	bh=yhrVrNtU4j5ESc5ihNJIQ+Q+U+Zx5r8r6980+BgLR+k=;
	h=To:Subject:From:Date:From;
	b=r+iUb7KZcaVwOk2Df03hLJifUGrqHsXyvqGYPHcwoAlq9oV7WjuQsqGY/cBCYJtkw
	 czVizgkThtsY3Y7aMFroUfAE17yBj3Ezh3jBibAEIfWVdHGSC9OiRX8Y/fudTX1R5s
	 1AcBO9BJYrnu3Sb3iuA2Y3j/9o38MNyqDLspLToU7pYVpmYbYtWQxz2U5QnFjrYAJs
	 X1ewu+PIV8l4VxckBLdsl542b+nyUbUcP7Gnb5hxl60hUveT9AoWdr5IC93gXPU5Cq
	 vPvC6lK/D/uFu4xdENjaJedR9O3fkjB+4UB9XBhncqT7Q0THMKE+53uSgTOC9ECyPG
	 KAEaDGsivEElw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1230E66887
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173239715362.27538.9420516001112826124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3fb7f387ab2c19ca12068ab2429a1719a61861ad2071b3b855da290b6a221b
Date: Sat, 23 Nov 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732397153
