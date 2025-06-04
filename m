Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFBF2C3251
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749002394; cv=none; b=o7h7SKMawomtvL8wfZlmJ8Sqv3JQzPuH3V6BTAuKWGHdxlf6oTtrVad0NZGNBMxeh3ewo5pAfNlNaJuDVlnvA9l8iI+zXnVuof9xzZ7gY2so58Z+xbsX++Jo41dahuwiwvinVo7Rw35Q7NjwuePugex7IRgOvQcH+sooU9WGAUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749002394; c=relaxed/simple;
	bh=wxvRvt1g6F2W1NzlZ4O/W7VeRrFVIRtzk06Qqc2k730=;
	h=To:Subject:From:Message-Id:Date; b=bLWElShHwrygnK8CiH25ofQYVviAABftMMvT3iBmJWnR7WgvAAMCQTurYx5UB1DFApH1OspDGvKG0C2jJ1EA9jjS05ZKcpiAWIaDaJSQUIDwLTH2AZBkLnQC7PrtrRhp3CvFnqzxXdjE4eQ+GF5uL+eBzyrZYwfgmXftJP/umaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBhwcQBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBhwcQBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95F1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749002393;
	bh=wxvRvt1g6F2W1NzlZ4O/W7VeRrFVIRtzk06Qqc2k730=;
	h=To:Subject:From:Date:From;
	b=OBhwcQBA3yLrEqqdaUkbVMukl0XN8Xgb3XOY4u/exN+UX23qTKbSgueRF5PUV7uA4
	 JvYkcbLjgT7rJG8ayGssSuJJarb9rVIZJDEe/ib/rMxPC0eChcqwMUrWAQ/vQgGl0l
	 S+EGKRNZrNfq/B7axnB7DRVjeGP+0vDtXGwY2wMgLRKwg5GxTFc95IrR/mf9etbtIQ
	 lf7wBMw/uEv2v+IrA4bc892lKNb46i3tW5HToAk2lm8SsrQyHM+Lm2yw7DsnCwpxAi
	 Y3E+hn/gvw6IaJma/PlPntqE09I7T74q2DIgMvYlqMpqfe+PmD0iBlYIUtCsqwtZAk
	 WEIpNd8AID47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF9C5AE59
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174900239360.693.9190545266056340497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c19f1beafbb88b758106aa69a38a8463f1a4361095ea99899b865c1ed47618
Date: Wed, 04 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749002393
