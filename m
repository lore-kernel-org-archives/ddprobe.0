Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3840821CC5A
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775801254; cv=none; b=iVhXGpr0y0JOMCrnUjHwx3Wq0fdnygcBCzCC/ULDswNomw+XDJbefwQU0mYSapPwuDOpVt6cuPd1e4PaBmdEFT64F+sZeXtnWgumd7hwu9YbeB6Gt7ziYW6P07sDW5wGy+xS+fQccXScmFc1QPNk8+psjzGna1RTTjXS0+Xzlmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775801254; c=relaxed/simple;
	bh=5BHlxb8fC0M8sqwkgGiy5G3VgFf2HJCF/6lBzyc0evo=;
	h=To:Subject:From:Message-Id:Date; b=MkgTq5zOtD+TFyVi3Ga9lYL/QO5PYDR83zH5q1jkhlsgKgZhtrwrWNZ6ecJswdAjJHfqPNpPYFycKU+6+H7Uj+Ojx0MYpoRRamIMfFs8ZzN6RzxWfF+S+X3qgZ/3Eq/2fOpxqbnoJOQuNbR0bWRGH9JLabuJ3OAXI9/VdL7U6Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSa4dylk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSa4dylk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB50C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775801253;
	bh=5BHlxb8fC0M8sqwkgGiy5G3VgFf2HJCF/6lBzyc0evo=;
	h=To:Subject:From:Date:From;
	b=LSa4dylkiDzVb5M6SCf+FZoLYZlVm6OjZjNXCFlaC1BJy0lyW8DfvGqfVi1K8wKKl
	 pLrFoYKy+7jCnXsYCP5bo5aaHw+JVwLcf3li/1UbURGlJ0YkFqdL4481WTlJiinxUX
	 ruxFdoktcEqwA7MDHNDMQKgrpwM9t3qOcGat6phg9eS8VrYOPT48+6VJ7qoNVz1zc0
	 JODfxcNn0ZWqp5aEpx+04PKtPmmmLNNyTjMaqSNilGOCzAPZ4J7C/y+OsUECeIFyyO
	 QVFyoTljHGivl3iYj64f5B2ccHoHbjVz/gN0swB1U9/+R7fF4142uvUGvlhA2KnAme
	 0r/J0xUGDRc9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AC3F36BAF
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580125368.29220.18372050388775660392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7981d4179aabe946d32446c0b78263ec903caf4e371381549860796bdce61864
Date: Fri, 10 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775801253
