Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAD1514FB
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729670754; cv=none; b=CafvCcUWgzZW5FVQaSB0Yvfl7trm0dhzdPFaVICqq7GSbFdgBOTPtbGtEws0j6kDHL5xh30B3ERVV5ZMZK8dzKtDUp/9NGSolyOlErtjzSMluA/xIo4DgqbIC9PdouSNWtfQ5DydkzbCUm5lkPfgduFIDdlH74V0oWyDPIS/FgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729670754; c=relaxed/simple;
	bh=kNOaKwQRYuvPn8q+pHfjK48tara9KW8Gn+fUELdiLXM=;
	h=To:Subject:From:Message-Id:Date; b=Q1Rk0f8El8njJ1gws6UWA0aybOzRUBdwDt5/yQo/NAgD965bFCWS/bXEVhyDnfqnpBYcAsAMEOdfn1RsS4j+UzUdt+8MTRz41Lm5BM0LgfgCcBgEXPW8ZGHXxYC8RxHxbv7vWDWy6Gv20wRJ8LM9GAPapgAV15gEx66BRxu9Dfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHdO4IaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHdO4IaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB042C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729670753;
	bh=kNOaKwQRYuvPn8q+pHfjK48tara9KW8Gn+fUELdiLXM=;
	h=To:Subject:From:Date:From;
	b=LHdO4IaDaWFHpwnCDmV0CbcPQLQ0j4/A6H+BIUplQyaE1XS+sYepKUTaPY366VU/i
	 87mbZpDmyqDHcU/4sgSOz7V4/JOOoru7ocvDlFYWeaQtXvIRPf0Q+AqxZHgObzBEEc
	 LhHh0ozPaOOy88LQI62kEvCsmou2eFY2NFOZxCGm1jt63GhtjtZQniWfbRowIsB7LO
	 Pq1QjlEkYOKyDiaPVbDhW/eJuXLzqYhfPW0Z2Pe9bElBT1Pj3UK1mj1yxdOYfJmGY9
	 vj04JLEyYqkdePfYcmw6pg0688ml4M7Fomwy3iZ9MLl7lilSr59XsS0H45zQ8DWZy7
	 Nu5vBtMt7EMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A83D2E01E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967075361.387.10271417602654617716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2d98e8f916f8d474e92bf02dd06751b14623d6b84bffe05e5496e53b29e438
Date: Wed, 23 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729670753
