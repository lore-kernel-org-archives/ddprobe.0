Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A411CAF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739422734; cv=none; b=ok+PYD4FNsU55jKO26rsMkvrfwNJesQzT8knL5vhRzdYa9ftIX/OeJ/R/TjM0ru4rERjJOXXPYWpteueicg4kX/wFOws9B5LE3ukTrIpzBufqZS+mMiCNRW6hTgkoevMUt4288lhMaGvWMEJyRBFncoSY8wHaCNYYYu3rPcprYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739422734; c=relaxed/simple;
	bh=2BXkR8s7hRJRqgMW11Fj0XqbXdx17DTdBztXy/612nA=;
	h=To:Subject:From:Message-Id:Date; b=AAhwCRTBvu4As00x6QTdtdHchtiraoh9j9MFYaD6PfrlY/DBOq6xVHEGMUCiRvt3p468HoN+uKNqjhHK5y1G/YnZ5fRjarCv6wT7C3G8c+ezTeKO2YUnchnahvzRvKJTvLDwTC6kygxR8n0f0UoyG9loTyZT+lmbdLe6IIsQsTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG+6eYCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG+6eYCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67F3C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739422733;
	bh=2BXkR8s7hRJRqgMW11Fj0XqbXdx17DTdBztXy/612nA=;
	h=To:Subject:From:Date:From;
	b=NG+6eYCoG6TI+OxW7zK5M5LDE9dvW/7/MFwMoOpfVbApRDqW8jsCRxQquG+GSCTks
	 1A3rl4LGl0XztrnDQY1xa13lAaroVK3pT8Zq31zTI9AxeVv8AeT8d4YrLtW4Wv4dKh
	 QigfXgNi3uE7jWI/FBI0VMWEyxs+cJzUE8eeTKB7R8c3sT8mqZQ8D/RdBdZmDJnpGz
	 V5+P3FDEvY4Lx7qe2pieDz4RKidWsk9PhuQ31+eaEWPVxYKn/ypiSXrEDU3d1cLxpP
	 H/YIoLIIMs2awYOtEpExbGRXMUGhxe3cTEAOMyAWLruh1ND+m5HmktxvK5gAVz+9zp
	 rtFMxMHSqLDAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F35C021A7
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173942273360.28343.441869622480965140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f08261b89c688cb715a15fa5078712efc14751350cdb4d13018fdcafce67eb3f
Date: Thu, 13 Feb 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739422733
