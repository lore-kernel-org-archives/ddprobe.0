Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F67C2F0673
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787439634; cv=none; b=ZHJchWiOaEhHv9s6K6L6ulaUBSR2C3v8PVfiJFWxVeurgxEC5mrFG9SwKcfoTaXgGO34brNFBrt/kBo2/16pXTPivR+zxbsoRQjDxqdfxR98ed8dhJW8noMsBR7idY5t/EvEMzoZlqCwSMDEi8bZ6Q59Kz0Cdt6PVxsn+coLZxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787439634; c=relaxed/simple;
	bh=WH1cgkIza5kxu8wM69EfZC+o3voPu6Em/WZjvDpX76A=;
	h=To:Subject:From:Message-Id:Date; b=S2r+7ZTESW5bjX6I619NjVTwjAIK1vsGf21AXHl0GYlssylA4fPjKk/bTPCqq2Ek2/46UkdbIl9paya921M4/JV3eNeEOVuMNJbkCFDL+DEtxwkPYLQ8st1UHzzP/cq2IH5IXoj/ufKYECbc/fYJJUGWtSj8027USaUr6wYjNm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpUTSMYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpUTSMYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E90A6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787439633;
	bh=WH1cgkIza5kxu8wM69EfZC+o3voPu6Em/WZjvDpX76A=;
	h=To:Subject:From:Date:From;
	b=ZpUTSMYho/xVUK/pmdDmbsJrwJt2BedTKsRHXjHRNBVZ7jdgXY+1Ei9heRF4e/0YK
	 dzBs6FICclQcOohjMejrEH5kImRXxIHLXcXOf6A9ObVSEJTzNI0xgCKMm9VgVnyOJj
	 4bG5mxKqDbyqfK9Z/u/0P2UQamBMJ3ny4JHeoyIyggJeWP41vbTkL1rqw6VD9lLM7u
	 yTaFoaxa6LutZoZKajC5XkYgz/iEBcuFQsS0qWWv4SvexgqR7X3aemAD56NYgIAsh0
	 KKBBXDS59OwMhci4xvKkbBQdUQjZM47wg4bCGLZ85q6AkcNh9ZoTmUwC9QNQvh6VXD
	 DKZBiJWljpzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2426C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743963370.4726.4367413182986663693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8f07ab222d7bf29cfbcdd4c436b2a178be0a5ccf15f452f60b21f082650cb2
Date: Sat, 22 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787439633
