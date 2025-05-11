Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5803A2AF1C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746997194; cv=none; b=D+bu1vbFLC6Mxj2HCCvze66FzYWnOw4TGBcZN3xTNH5ACoCC5WmvsiN+ufv+paF4xqbRStyI++QbhD92zKCwXDSSG505UukFjVXuUau6IEEmALOY3crytzC0IZ0VUfQpQknJpLiV79Zllep1r50fGq+3CnG/aBOdh/wzbcRRhzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746997194; c=relaxed/simple;
	bh=8+pRDl/irtqk3GVqLGQ4dIqY3LgaieXRjKekerSX/b8=;
	h=To:Subject:From:Message-Id:Date; b=R/4Iizc0jBw9ejHGVZ14hQqr4Xqtqjnf8m0ru6B5YuZdh8IGdJylBb1vXvBrun9yytAz7CHTB3+TSgqbWUz4t+nnvS4pMwrWGRIKq5qTeKSIq1LlTg9aWvUK+saLgiSW5pmwCgTvo5ayXaINxTOmpeJN4UuO2SpH1trsP5jJjN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNmhHMFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNmhHMFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5149C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746997193;
	bh=8+pRDl/irtqk3GVqLGQ4dIqY3LgaieXRjKekerSX/b8=;
	h=To:Subject:From:Date:From;
	b=qNmhHMFC5XKul/vfHg7vQ9NzwrZrDKhEBZQOTGXh+JvyDbEII2Q8SBnesg9vH2cBx
	 bGOyNvduGVvCC1Td/bEQyPTwap9aUI8Js3tIv987DxRT4ZuwoAUwR554DEm52URYlJ
	 jAwee6OoAbUjKxa/PgAOWnCQQgPASqAJKdItcEfehepIHOHuJfslmXHWr2X1MQwFnC
	 v8DCI8TvwGR45XZHuhLTQfZt1lwj0/j/0HRNPfYIwGWIQ5BEyswdGLZrO0N58DGvKx
	 qxoDcHkicfl1dy5lEWS3V8U6tvKkRTFPE7+Hz8RDXczFIbJ5Rcqe55cghFZAOfZnsL
	 r2nbfP/khDCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F67C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699719357.24888.5398503151571978399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5221499c09422be6d891cdbe6a509d69759fef6159e83cf50c9019878faa634
Date: Sun, 11 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746997193
