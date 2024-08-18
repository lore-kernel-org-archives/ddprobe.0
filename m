Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E714208CA
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724006754; cv=none; b=Nn3oO1Hq2del3aIAvCk2cUAaybCNipzsyqGGmiSZCcdB/XUVG9sDWRYLg4Ooh/td0k8spk7HlZ+fCzCYDaj0pcjrgyvpc13Wud2hKDFQsAXTmW1AqH6q3qMQfYsC/0l5gX31N0isksyDErvMsOH0TwBCEsrlFR7BqI1REGv+rbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724006754; c=relaxed/simple;
	bh=ktw7ksOKu9RdDxMPlDNZxTrS5oIV6OFej4pBa4jwh7U=;
	h=To:Subject:From:Message-Id:Date; b=jqKjK8pFdDReKdnfl8PVXxBPtKvIPDFewuH+/Oxp7eG0E4GBFuQto5CHfw79be9+kyoe93krbo3HTpbYTN25Arlh/ng62gpoZz548z861+uDXy4wspsY9x4Hbb7fl62+ZwoLDyBzLB74W2wrfSvqsOuhOU1rhCTOSRV9pm7p56c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNjM7UcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNjM7UcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB70C4AF0B
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724006753;
	bh=ktw7ksOKu9RdDxMPlDNZxTrS5oIV6OFej4pBa4jwh7U=;
	h=To:Subject:From:Date:From;
	b=cNjM7UcWEw7R9C/rTbInAW+T/Lxj02HnEhcstWeRSkBQfKnWlD5eRmRjPGqOLTuMm
	 rETrfzj7Z6ZIjHMZHrWKyou6z6pHUZUMbHxVly03Aj2ELpfigt1Su3+2qGAYkTy75O
	 kGPxYCa0t7FTGdsuvnY+l5mJI4PFvKtmZTlqrjuyZVqvXhK8owBjk8WkWmNh5YSNC9
	 g7nH4sVj5ZZeUrKvSL76Pv3ibnn2xNm0dNkAeh6/MX4lkel1F3Ls0XB3jpEKeLFkrt
	 QJdMBzQX6T1JwZ2FnjKwJ0aes4Et9uJMacZFUke3rLtwe7VLh+wjq0pzq6QnYnE4YT
	 TkBSUTIAVw9rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86FC52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400675360.32169.7691940172739910111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc2b27dafedd3c5a3775c58c0bfddff77207ebabeb8da869b4d78a131a6c850
Date: Sun, 18 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724006753
