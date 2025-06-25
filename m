Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D394211A0C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750895994; cv=none; b=g4G6hnOtXzhfAZ1buwlPfLyvRcf03NsZyj2pWKLZE++FL8jbx7f+nJbr+SOOhkHAZKylGxf198usFhIFExMuRynLFe7pMEiN1NRa/XrQlVqeTMpuqosME8O1EMIb9nF1UXpzPCMn5ifQCiUo242lbYjdirqfA97x2Tv75/5q+fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750895994; c=relaxed/simple;
	bh=T98Gnxz6K7YoNcL4WUXxuGcA3EXZYKk0U5KhcYs3Vw8=;
	h=To:Subject:From:Message-Id:Date; b=oHUEZ61Hn7sVOSHiHmFED4ua5NFwzSjsI6YYe/1GvqFdkC9ACQCk8581hkzx/+VC2lhaiPDpmGXgMCnNocSvxjKR1Wm34YwJqZ/WC227rxM7aaDrKKRhll2prnpuQwIFYAXRBnQ6Re2chVZ+g5zpCXGHrRuSzH9ZZBzf1/P9Y1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFrcVT3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFrcVT3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1935C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750895993;
	bh=T98Gnxz6K7YoNcL4WUXxuGcA3EXZYKk0U5KhcYs3Vw8=;
	h=To:Subject:From:Date:From;
	b=gFrcVT3BLB62falO547Qg59S5bjToYXm9WSmIdb50nI12lZD2RNO5I/cQ3BikIH+w
	 Q7/4mT0TsZD3cpRaarjzCOgFBQz4tPUlKuqoZvrtV8pjaSZ7wvk/z8PmBxaismVCGs
	 HMXPgDmtVDDM4o2BX+/KQKXPnqa1HXImspWyzbx3oaeOljrLjCuVkgdHrvFFR7OycY
	 Lnb7QPsIZRlfVbn4sjwFQ9QWuhytnzXhcn8YsptEhkxSqYA1QFCoDzA4EYQ1f1fCQR
	 hF9Hzldss70L84UgaRU7ida8hBlXt4tY2z+VJ084z3SHglAxuvf0K6zIUcVwTkbxgg
	 SuzaZaQh+cdZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033BC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089599358.31303.10742648478424080863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aece51774aff1931f5db1057897aaae3242df5e0c13a850966c00fe72d861f01
Date: Wed, 25 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750895993
