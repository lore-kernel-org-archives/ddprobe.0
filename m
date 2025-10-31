Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13ECD34C805
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761932994; cv=none; b=NDEtLnOKKTYjxUCFOoGLeuKs34etXJys3ltfnDj/S2FPQ9RaWVwQEH/rEfduGfpyRba2TP3bd63naGYZtnB1pTY0U8xgiP/YgQfI/eiVId1L4ZzomeRdM0Hiz5LcomspbG7Veq8/pG2emCiYGIggBM1alkR8NkHfyOR6n3gP0z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761932994; c=relaxed/simple;
	bh=F7HDQ8IyruFEORnr3555GSKAwOp1SW0y6E7DpXtCqnU=;
	h=To:Subject:From:Message-Id:Date; b=dmvLe+S8Yee3KWwaThK3M+KcLJ05Kf+IyWYL7jKgpcVtc7tTSEltBJVIL/aqxPVPHw6G4PkR5NnoaJVAN2MWF7DN1p563fUlF4GjFA7Y3sn7i+Ts/QycmXpsbZyHk+NfljhPlXEBG3JQDGMEs7p7xG2UtUW9YnyNJP6lZW0jHBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1TUCca2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1TUCca2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0874C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761932993;
	bh=F7HDQ8IyruFEORnr3555GSKAwOp1SW0y6E7DpXtCqnU=;
	h=To:Subject:From:Date:From;
	b=N1TUCca2cFvKSsxNHjgjsgm7i+Gd4yjsjKOZc83wE4WcldzEKhbW2MfCx4F4eSPs+
	 UMATfFWIdGQkLeEEYyFuXfUFIRJIh27xWKI3DFMX2fEMlY7U999KB5J93QlM7SR8C3
	 Tb31Ck+pw12g8gABGf5hQwItTnNJ14s/9GL3w+6+HgoSPGge8FuNOUSOkAHjehNVOy
	 pcsmoh5D6zK7hx+aAqcOaRs2EFJcEqKAKH/Q8diPN7KhPlyxGQ1d7Kg0HvXPwPFMaM
	 FJkPfCkAcLhZ15UU0SCdwdHGKNsj9T20nexNziyxDH+X/fSaWvSKdNhFmHosWWArY2
	 dZM2EBPnO9d6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91528CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193299358.31526.2076921210734839930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da4972cc55dcd4375cbb851a60233dacf18143c697c55fd88293986177536c1
Date: Fri, 31 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761932993
