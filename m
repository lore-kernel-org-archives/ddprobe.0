Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2496028983B
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752951594; cv=none; b=NmmGl29bEDCL0d470Z3sjTfBs45jVFjkXGaT6/rFkALKQZOgGDMWgTj1LSXcH1vjevySNB/RgF02H4QEtU3W4UcdhtmOWTJyMDMGKaOXgKA6E/ahpDgpiFiir2oIGv7ODn1KJU7iEz87fwKqx8rsh9c7yEcwsRsv57suHmoJSVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752951594; c=relaxed/simple;
	bh=+k3wQ7pyitCb8Wt+zK6C5VCfzrsnqSNBCWH+x0J3cS0=;
	h=To:Subject:From:Message-Id:Date; b=MW7rF81y6TrE7FUVMJnOOyJZG+y12W+xzeTi+Ah1WCcRpxLGtgW+gpLgL8i8LAYJX2UL9ab7tdwr5Pc8JFSoKT8uPn9hlr7ra8jpAZEVDzyh7hsmF+E95PcA/AtLVbKGeeSNg5DDdzS2Iw9o6kwL0PlNo4As/a4jehOA6Cv7wpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfFaFdHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfFaFdHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E0C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752951593;
	bh=+k3wQ7pyitCb8Wt+zK6C5VCfzrsnqSNBCWH+x0J3cS0=;
	h=To:Subject:From:Date:From;
	b=bfFaFdHjszU3nxmr/yOb+IKMy88eoY4HgwDd9Dfh+bf06Oggx1SiWQ87SZmL8Kksj
	 Xxyb4jsYKtQJB54H/N4+46HDkJG5hPg6xvp7ZfYu18qFcdoZEJN8FRESPvDC5sxvjF
	 JAr5/4j62FH+1RSGij1tUB0ZTNHHcVp5veLdOjSRmhwr478K1hgKmVI9ibtn724dy0
	 9sToOVWHPHe9LJBAzeaowES1yKzYEd/RDxdWZt22dHW/httnVb5jmUU2oep6GO+JjE
	 1hwMjnfwYI/FHxb7aM5JR5q2m5lfJZ4l/S5eIm1IgaVhp/j7chjFhxDV34MysgSsxz
	 qUUfsH+TVooGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BBEC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295159357.5174.6496602702775362571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943be7cc1e975b17fe60f97ad4cf12a420e59197588a9cf4890205dc450b4be5
Date: Sat, 19 Jul 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752951593
