Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42460425CC9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780593874; cv=none; b=VbnojSsF5NvMjIFs4h3yxlNnh0/sSiTt9kOePWOWLHmH7NpaX1c6rUmw8GFP9kXfADgUwtHYaS5tlKypwV954bwYC5/M99e4miOtJE1CEK+9aCEhkcpplDK231DV5QGwg1GRgiwG83BUBTNQrrzIs9lCNdhGzjiNCKuTiUGI948=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780593874; c=relaxed/simple;
	bh=AOB17lpkiBz3+TdAL4mhPdAVFW5u3E+kjKDSYD9RflM=;
	h=To:Subject:From:Message-Id:Date; b=FhkPxes2EfuoPRLXX/lLPxEUMuv05MFtzHF3pUIe1bCSNXtfh5pAia4Sr85fTPNuZymltQLksQALPdMGI8bGffKdZv+yrGD0pycftgKslyDubzEOt+rLYKiUlGA6rj4hJvtw4NgxAZgkm5l0+pBwVR+HBZ9SO8Uo3OeKd2TtN3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWwuom1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWwuom1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA452C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780593873;
	bh=AOB17lpkiBz3+TdAL4mhPdAVFW5u3E+kjKDSYD9RflM=;
	h=To:Subject:From:Date:From;
	b=aWwuom1K22V9h1lOjMcTETEXJYb1Zw3CuwdYYdkHjPzhEmpxWQG3E6N90lvhwQmEJ
	 w15NMHAwUwmou79gVLV1Lj3tVrm0RY3FLGzyDYUWqjA+ANLvRZa+i7fShodYM3kr37
	 VqNXFAE5I+XkUrlkuipbR9naB8IIiKXoqbTK+WyZUw8Ud6iO9ZxOnX+js/kyC+q3a3
	 mGztay0s4lUHIvyIWIW4e+QUka/c7iShfxCcTk8Kh4fevrfxmWAB2Ob607pFnJOyPC
	 lbgSqyX0211iKkzLq4Pi7VvbO+6EAoZdM64z5WruXNYe4KfSUFJrPf3bPAOfZniK4F
	 rQ7sNp9EUOUGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1EDCD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 17:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059387370.6227.9890523771831543501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2473b3f5f01c1ce2b73159cc157918409a907b8e40abe7458657c7a1b8d9949
Date: Thu, 04 Jun 2026 17:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780593873
