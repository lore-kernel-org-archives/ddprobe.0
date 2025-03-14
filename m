Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EB013C689
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741938534; cv=none; b=RWIyVmYUtVxVglcyr2nA+X1cSNHnlHX6owk0hGfHQB506QBnbBiv94JdTVQqFN68z2/WXjtWZiM2ljUZmS7g+AoqTKJbgiFvu7VLMgjFJ8kSQJT3MCwmFN7Gx0+SzSD0XWOxOW1VbD8oSgNrbZqb02qFRWlS0mkSvXOndPWwmkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741938534; c=relaxed/simple;
	bh=BrkcbJyRRCdH9tPEt1Q/ySrsaShcICwAYFDGb67jFQ8=;
	h=To:Subject:From:Message-Id:Date; b=hCjI2NbEppTrzDhsqzHRj7seUGY0CdJ0j7foTNDRt41vCtHRUBYGPanTKzDYQ8m4PUb1GUhREhfM/3w4y+tzT+J2PA0lOnt8BLTUsYXPkP5vtJWtKAGsPfAglSB7kUGzBjIBU52+vL1HsSvF7esXM+DHXj54YTwSKt6lMsM94QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZWpQxcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZWpQxcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6307C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741938533;
	bh=BrkcbJyRRCdH9tPEt1Q/ySrsaShcICwAYFDGb67jFQ8=;
	h=To:Subject:From:Date:From;
	b=bZWpQxcVW9550N4px+JEoRgZV+hqhiI4JA4NJMAph0ux7BZ1BKh/lW/H2q4J2FPED
	 64opWN3kZt22TcZUC4aczAOOjiUi1GJJryoo9MtxE/a/gUoEvJQPqegdeBqeEr0Zjr
	 Z6FRxhQtfIQRGgN3glyMq3/5yDXfHUvTJwyXo1QY7epg0fP9hNiGkV7tFOeJ+Poqjc
	 uyDf83jxI/zRBhrCoPT+K2wb/fxmIYbYVABJLejS7qeIYzLjduTytJaTAAK4Q5gIfy
	 1/KekoxgiVRbnsk0NI+X76PvFkged5M0Xfo49ewqCD2HCZ3S0HR+2OegJpP3X5zSMW
	 7pJL9Am7YfusA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91922C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193853358.25072.6868843894823719419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e12faff411627f88166fcf2af7a07b53bfe2e87092392541ba159455a0208d9
Date: Fri, 14 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741938533
