Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8CB296BDA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761717594; cv=none; b=jmjkMq+nxRln859BncfO5fKDZJ2xP+TQktxucaUrER4D9UfP9X2E1Yw29B0cOxGNSpAWxqsvmwSLIpKlyKKi1+l7vdfMvoemU9z3+agrb9tq+MWfVRe1qbFG3sB7JyRGTOqgfOUC759W+R0YMj3U87Lvn6jl7tX5wPK7iID8Cr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761717594; c=relaxed/simple;
	bh=kaauBaLiTxFTnqHjuodh+A5aX+6hD2CA6PJNCvMdHKk=;
	h=To:Subject:From:Message-Id:Date; b=UHDMyJ//U8RErWJgVoLsaeSnign/veUkjV/rOnv9FdOR1y1avRWQMdP/WdaODvHmwNOKJN877txgAtHrat0LkF8Wuop0BearbhDLyJ48ioomE/jMz2M35sD0GSFfzZ2veYWDS6AAfvnfFUWdzUNz0wqjTGv4/Mbuw+LLh06Lj1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ8ZP3Fn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ8ZP3Fn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2383C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761717593;
	bh=kaauBaLiTxFTnqHjuodh+A5aX+6hD2CA6PJNCvMdHKk=;
	h=To:Subject:From:Date:From;
	b=hQ8ZP3FnobZCz3C3SGWodZzzFRDucQTw06VO8SV6Ud9QsHLprm7g/sinKX6nylKKc
	 YkNkhHWd3zpsoP3ebN2zlILMPE6KIhhWXgiaYzcn+Un9J5uWzRlA45t3OOFcLJsKQi
	 rN6FeE2qppwQfQFyiM4UuPWhpMDYiKF/p/vhMstMoWM7h5lnL4lDGB22VWb/1Yqu80
	 yKlQT2h7lRqWpUUMyJAM8Htn+pTXrB8Nwf9rslHomFvhcr5Fn+7zI71BPTichKRr0f
	 t3KQWPWWveJGkh9lUbtjSRNcFNubKTepcX6cE+DgWLq/GtQbw1mQGu+Z5D/q7tYdaS
	 bftBMCwJ2yIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2943CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171759370.3796.332013012287149123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674d9f1917756a84d9e2f9a0fa0e8c86b0b4405856605bad195686ad12c34ea9
Date: Wed, 29 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761717593
