Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1792F5B
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761266394; cv=none; b=IFoXdi2OpGlt7Poo56hQ3ygFTgzqGjFT3WkFl5SCKM67rlCnk9y4gpfXVzX9eHN8W5ilU51rNQRMSRxAI2OVn4gA2ccGOAqMJoq0driw1rcUF8BGXxVVasmKRg320LkzI+SAh+fjPgYiCFxibVdP9VAZjpsVjaPKwmVPPfzaRgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761266394; c=relaxed/simple;
	bh=CQjNzDo90i3IusFAVxlOuuXnSpAMYQFvpzV6Iu2LOj0=;
	h=To:Subject:From:Message-Id:Date; b=AXotOvZxkzlS3nCkpTsXDz8UqA/+3wQnnwewzYnDMgdTTVnWfU4dpmcqK1Wr0Coyzr0BWmSSjaArgrexGNgZO3htD1yketpin0GD6oSYrfSiiJXRP65rltfTSDNPcKvsDcZE5QdPR2C14wv1ROtKn73GUY8Bf/WVimqpXbItWts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlEGgdRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlEGgdRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A104DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761266393;
	bh=CQjNzDo90i3IusFAVxlOuuXnSpAMYQFvpzV6Iu2LOj0=;
	h=To:Subject:From:Date:From;
	b=OlEGgdRD/H2A8jCACjVF7FiPqMmAH0hcodna8Irkwhbo8udphiLHKUv3/eHLxzyqj
	 oWbXH/lC+ocGqepmp8jo3SpLtImlOFw/c1nuRIuE7I1qWowbnQ8g9uUOzVqdixRN3O
	 orJCj3/DEMW5jrAwUftoJo1up4IjdkCeZzzrQdMJ6TdFFtdibMU8NdHVka0AYKnFbi
	 3fkUDwBUn7GwwHi4Qhp/gLYYvBm0LPELRUsFcfTmcWKa0D3N9QBSRex93p+J/g4tEK
	 ZlghttDPMTcZGgCDs8D2NjUUnxhQdKcrd7v4ks40Kz+CYFE4Cdv6krkAsSNFBuqmif
	 g0TlZgJvWiddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE54CCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126639357.12461.6193195873619867430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fce637026946056894398bb5e74a4993ae184dcc792de47464716e4dde0b5ba
Date: Fri, 24 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761266393
