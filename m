Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5431FC0ED
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749107394; cv=none; b=gOYVKMsWUerWt0BTxkPMq6ChWtDxcGPMkIwAwBgewsd/0FxZr5XNI8Ps7z7iFzJboTMDZCqBGkmUS0FdrqZQcGD4Dx2FeYyG/9b0+MiNSufaAEROGWU5t6ejJ1/uJf/Oa1yJlZz3JQ2ysOqglvmYB6KFshNQeGNqkdYrhztUbq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749107394; c=relaxed/simple;
	bh=wll/XjNi/TA12VNnQCd0EcL6fs67AqzMpH0VXyYGePY=;
	h=To:Subject:From:Message-Id:Date; b=KUEMHk6XG7ePap621sKWc9Yal3YlnOclV7gMer9Kf1zLEomVCzb6f6ohLGJFJE9+2SUvGBEmyuw2rFBIpTIfYPmQnp0Cjy28X/dNLSEATbrQqxYYr9oFRxQSTgCMyV73wDQFkNC6RU3sFndvjPUbtJNE3viQg9YwZaVGqIbhqCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iyyd8FT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iyyd8FT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DE7C4CEF6
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749107393;
	bh=wll/XjNi/TA12VNnQCd0EcL6fs67AqzMpH0VXyYGePY=;
	h=To:Subject:From:Date:From;
	b=Iyyd8FT/c9QOoZvGLfo6XIudRr44eQF7R/PK8sEUNxlrz3eTSZZ479qL0cqKyFvwW
	 H8Ia1J3Ma+F53KiGSifODwsUd5L5MZlXypEKKS95btlzDHjTrkyNW5fah13GeR91oW
	 G8mHOG3GCpBu0MIQBF3yP1AwNF52eTQtU8kkv5lN5D6/F1y8HgmxMZC4nz0bvvrd10
	 9Pq5+jmfmoMi3HExjvjwmDhoSd/bL0tsWjlRKKZqdY+4Jh7KAjq4TWJ47aPQu1MkoD
	 YcEX6xcva3PfWo116LUxJpYd8B1reuDJHvCREEmFKFNaRH5EI830EMX/Xbz1RsHlEk
	 SCmppYNfNo+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CADC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174910739358.13853.14353392491146568175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6f4423a3934239d73f375371194d93309bada244987677bfafc0066bdf98e7
Date: Thu, 05 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749107393
