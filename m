Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121CF193091
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729313754; cv=none; b=eWMyDSCo+SJ+pkGwFVpllAxcEK5k/cxkscMMbDvO7Z5EbmEz9SH2rOX369a8Zr4XHrlJSbA04ZxgxDWUJxSiQHgQJiFU5fTKoYsNP1B1jfzkGLgmFMvR1VAVzTUqG0Nf+BM5EZF8H0jwxxAfrIbSoyDNOs/e5kwZWwROrQ6dmj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729313754; c=relaxed/simple;
	bh=jZcSQar1cQxA5tM3s5GzNjmx4koogiNjwvbULvUnyZw=;
	h=To:Subject:From:Message-Id:Date; b=qkVBMkUI1sHTXw/46v7DXIaQ4tXtbScImyjmFD7oQWumqFPU5gW1V7HzT8F7wrwhdUWa0VlVh24bEnG4CqghUBW8Pv3pOJySNNrgoGWg98ew+17p4qvyv/ClJTYZILA4WKM5UKzdyiMPXB0e2wEo67Iwr2qhoFrPaB6Crlg0/yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/CwvvyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/CwvvyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB478C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729313753;
	bh=jZcSQar1cQxA5tM3s5GzNjmx4koogiNjwvbULvUnyZw=;
	h=To:Subject:From:Date:From;
	b=B/CwvvyMTvigMIk6toCcGevZ/lT2NG9v5rOUt5JUvSzoc1JCSykz4GHtBJbaPrSTO
	 /NcWkFUw+O1/b76PrNi9Q9yR/7vECsYJUXiqpzVvIKSU3oh41tHoRN4izosqVwWS1w
	 sFhB4AiPDZgzmHWAzsfTzawQycelyOjdeEki9X2wmy7OMRNmvk/d4HTqHCkPkOXEyu
	 2GU+TyYpzjcQVNyB9NSP+Ilp/OHyuNWR+GIozZSx7LY65c6IMInN4BAEbvXgdFs0gj
	 M9wbYAUJHSDBsCKheKFLvYydREpiIDwhg4Vk28lujvdxN6jtHEVXAvl4/n0nfUp00f
	 0xHKn3rjgYiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F9DD3C547
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172931375360.23647.10761188941455714444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca8fcde595bbaffd37622a8305108035b15f8bebd412f835b89ca154e0e7bda
Date: Sat, 19 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729313753
