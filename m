Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D2825C706
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754661594; cv=none; b=cIbcTrAtfpkhlDHAkoiTWRsnXelR1Tty9idaETvjnku3CT77Aeh2UpsQPdAHmnp9tJTU4/o+ytoNPXJBDUS7mF4NYw9fKQNSX9u4vJS4Etv/bZeAGcGtFLI+d9LORf2sXZCd6kpNiTtM/BvFQNxYQrG3QOPkwYqUkpJsmt+VDbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754661594; c=relaxed/simple;
	bh=KdxnCvl6O+ezBZQjIIr8/b2RM7TA31ZwRxX5hBjTh4U=;
	h=To:Subject:From:Message-Id:Date; b=dAEI9KGoNDy2vu6My2haNepdDcKXtBqJ6hgcQHYKMiAMsTJ1lzmB5aYeA7hVUmNBW7B3yuSHagfLotjejmzK4X4AMNoWPf7f4UtbARt3PX/nivPJVfA/sH6Fm60yTnFwT1syz9aXXFtUuqjT0bhgJqcxUgMYJ2rbKn34wSTrRk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKgQJd3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKgQJd3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0574C4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754661593;
	bh=KdxnCvl6O+ezBZQjIIr8/b2RM7TA31ZwRxX5hBjTh4U=;
	h=To:Subject:From:Date:From;
	b=uKgQJd3ILdQnjPy2+I+BS3oo7h6yAz/EbuclzsLlZaL7fCJMAWQic6mRI75ma+4OK
	 NQ1IweSd5IBybpOTWAN+h81P5Xpdj+ItXn9vY+9rSyH5LQEtsbFyebSG8kV9P1P56q
	 MIVKgTGdf9736WuzaZrsqGyF+GEolzFqZZ85T1wU2wRRaKHaWQgo5x/kdxkBvNfeqY
	 0/cc+eGVB0cyvd2uNOam2o2v85kzjM0BANUIZug5nQTeLk4hzFWbkFWKl06IJDW9te
	 ucE5STShzmliZ8O0t0tqZg+CTphaXJ6fCba12UfBKryDKtYSGbFnVaa5hlaa9sHUxe
	 bgkoEeKydvreA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B85C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466159357.20176.12009421226850101097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c18713068b48ddb6cdc7cd5ab0cb06c49265462f932336048bcbbf9845965a91
Date: Fri, 08 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754661593
