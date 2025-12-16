Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D2223328
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765851774; cv=none; b=B/HM/pUTe67dmhPZVVi83YQFMJH21bpSSjzokcT/J8xciUmIuSNMU+eWKFSMG6VYGjaEolcwfPeMCNPNnivboejWJVFcIj7fO1sLgrY3jyeIxlfAE/vnlTqfl0hWBJY812nTlEZZv2e3XJtH1tzS9g4GIluu0cxs2RJB6IZjpjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765851774; c=relaxed/simple;
	bh=yncuDFXeIb6epvsKlblcwkVVQbS3zJcCl7H+HBk3N/o=;
	h=To:Subject:From:Message-Id:Date; b=Ao2d6166/MuMk/AqIFyWx1nAHewlrsi3xLrqkcW6v+vXb92tdyJwWVa3B0rqPn+l8eSFfJHMZkd0JljR/6zWE2872hFepXCGSvRip0wHCgcmXn+9VwLUuNe9L1uZCTZ9pzvJjve13nxlIFqmtKi9dh7D1YWqkpKgSSd5SQx5nio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhSALfl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhSALfl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5DEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765851773;
	bh=yncuDFXeIb6epvsKlblcwkVVQbS3zJcCl7H+HBk3N/o=;
	h=To:Subject:From:Date:From;
	b=UhSALfl2q6SjJKNkRE4/ED77cLtyCuZ5yEjJ3DP2Z5pC6pokOUmr4jVt9y1ZxeFg5
	 rCANJp9Fklc5TrbG0u3Qz+yqWqf5nFEfh0ieOQ72nVj+TA+qw2CNM0VXvyoAh6KgPE
	 vuFn1503RirkWvKmLVatx26qH6t9EhQdFae/HItjRnfSy92uwb4NR9AXtfXWj6vVyO
	 UuFAag22HOcnNiuxehQ4z/BcTjhsWyR1a28v2+OXZs7OXQHt7586tQhjhyZS0ryrOb
	 la0xrTXxiXXIgx95fQh38UGBkoRxObBk8Lrh71b/H1nsY+aV6TIXRagiFXf4FOoo2z
	 LnGfGUV4rv78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA3FD5C0C0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 02:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176585177359.26402.17342709176155762346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1d4be2e673b53438d8ce80515be884618e9304338f922bda143560223dd564
Date: Tue, 16 Dec 2025 02:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765851773
