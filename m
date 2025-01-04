Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C492914
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735997754; cv=none; b=JUdIl6/ZEsTiH9k22JxU66i5J0VtXErUiv1Eam0adLdoQVM0cMoq9d/N2Z+gNPrHdnL+2nDZGqCwj1LMEHSGvuf3wlL0quvQgKRSQ8sAH010/KX6faLCB3gTex2CxwmKao7hccCJS53Qj3pA/DOy4V63c84an40tVnu0mMIDvXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735997754; c=relaxed/simple;
	bh=L1179DrKfrhRRniunWpPLABrzMVEqcWyRwYWnqVnOy4=;
	h=To:Subject:From:Message-Id:Date; b=YkiwYGThtG7PFUtHbsyywSlX0kKKG8ziMVpFLMbCOtOJRe8Tjb09ZORnuRrwXS2A8Jp9E/3ZCH5ArSo7S2H2Wq4/La8u3e36fMC8IXEUyH5LmXx2i6R6ZgOrFoxdbfDKSpSbSXhc+1CPjs5npYIi8xPBXECPAkKgEGH96D1TKpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtAtEVuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtAtEVuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA78EC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735997753;
	bh=L1179DrKfrhRRniunWpPLABrzMVEqcWyRwYWnqVnOy4=;
	h=To:Subject:From:Date:From;
	b=AtAtEVuIhexhyiRWDg09mUlPb1VFalu+gi/hxBoIKCBng8oNUHu6ouOMKMBGqm0YR
	 QSldnT3FQdp5Fg29z6CqgxrdsXs3xVfOjjvuOwE8mZFZSWnpgovx4yjYl17rFl0sPa
	 p6Gk3gsYJDcxH0biVD4u4Ob/WyJyqKSH/hOmhPsaz2ZSol6NWXhIepZwURM1D4OmH9
	 jeWAZhoW6Ssh1nvvpND4aFXjrWx0GEia/syOChLdLIC03cDj2ck/xCAzVaf4CP71+9
	 ZsKAj1MQ3OWiJoaYQ733kIbezWJUuEZqYReoElIuakGUrmilSKsPd1lA5+a4ozbpyx
	 7FeRDr3EDQB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B7FE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599775358.9215.10730275484098939490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024de648014fcdb29ae9ad75709b3e6b95547482255c982219542084921e707e
Date: Sat, 04 Jan 2025 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735997753
