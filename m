Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482111F37A1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763628714; cv=none; b=PAsS+OyFh1OdBt3H8Mtu79kiAE3Qd8m1iOcaYWAjLlxc0oCkhQqyBf6jNcg+owugjMuJ6QoNNDP2vSctAce+pWnjjrgaQbSHLkmZZys66GiJnuWalTLF7fHyRODeFee+ZyATkoLFltjQDtxkcp1SHBbUmmbDXAc6GEJbl4KKhOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763628714; c=relaxed/simple;
	bh=RBvqAT6WYlQm+rdEKe+Nx0KpsKh3X1MLQvMoxtoSYk0=;
	h=To:Subject:From:Message-Id:Date; b=Tws2Fa1imPNKodov/TzeYnuspfAV/bWft5BNwgZyN5zIHVAUkODcnmIbjPelVnDwZh7lXKseOQjIr9Tb2tBmAEoVmxCm8wptkQFNPmwEXbRV6iYm+mMhYMqr/xmEpyytZBQhLBp0u5mosj6/Hp3ktJG6wBGlDCPzjkq9j2LhXLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0jKCwyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0jKCwyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFC5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763628713;
	bh=RBvqAT6WYlQm+rdEKe+Nx0KpsKh3X1MLQvMoxtoSYk0=;
	h=To:Subject:From:Date:From;
	b=m0jKCwynTPccF3VWIdKhL2bJ1iYRR0h3XCFhGquxeG/QhVX6dSH1WWe0lzgKD/qS7
	 /K09m64qd63cmW7ApMtoRfRDMzFoJtCTS/jUZV1xPS4tRdjaI1WRPnI+7Tc7TXhhg+
	 CX7hQ4mqrWsrpVWYdxLPnwwL8XTHcSRRmvM6qJdYYAAGTLctYTdUljuLATua6ULPX8
	 rJ/fgmqZSQnaBM/4bKFmRqK88LTyaNA4bUgcToogRnd880IgUfzFpC6WBbiPLMAz4s
	 c+xuY6ie6rRo/RrSnuAeGhLFKblMQhIEfJaR92zag4BZIqxEqzznW7DysZEJfxx/qf
	 qwM0ECatl7n/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E65CF855D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 08:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176362871358.19530.4088153951865462014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eccecea541c9fb9cb063b6f56406d4915538f0be500a58ade7e53b7014b357bc
Date: Thu, 20 Nov 2025 08:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763628713
