Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A4A2594
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744358995; cv=none; b=ZPpwDSr/81rz9ESFHiTlN0fnQtBVXFRgp8gobuQV5v8Lb0txQVlcW3lBsSpvSdFvREH0afHa29yPZkvLD8i/whwjUD3qWSPNywd66/T3tEB9hOAENBa+Nnsp5dXVSCfVZM/hDjhJ+2MMqJRqpOgNB45jgj/5OTrgKMqd09HCAMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744358995; c=relaxed/simple;
	bh=kDpC7d85Z0aKJ0fwD+qblnbD7FoeNFGxoEh/GJPQZLo=;
	h=To:Subject:From:Message-Id:Date; b=VBvGS2iUgdo5IIonf96NoJAE01YVy2llIsTneWfBOXmDCFXHX2ukZCjElvLZemjDoUYTw4aoIusylH+Q53vPHdVlv4f8IAVnjTOpbCwyhaRNmwiP6ipAmSUySREwlpZZ2OdK5wPENUrxiYJZusLZYLZdD9mBr8W28QWp0ANXF/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbEkHPpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbEkHPpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADECC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744358993;
	bh=kDpC7d85Z0aKJ0fwD+qblnbD7FoeNFGxoEh/GJPQZLo=;
	h=To:Subject:From:Date:From;
	b=SbEkHPpODm7rNjoWfxeRLQyHB6YV7Kcq6WpqIslLyoVHxIm7yZE+4+6eYlN036LoN
	 iFN9y5TDtGoeeMCYCEa2g/cHUQuswXPIBpanXQ1HvdLkMZtfLyCSDxFFq3f+NppopI
	 72T8s/RR4hDaMdgobxtYHt4qF1z47nZRInXeIgHEs2A4u3coE6EKQdTrTP4MsTWI56
	 4Fg+b7c0bhi+s6/s8q5AKUC4xOewPZXyDP7WzZL8Gfl5DKqkpK2CXThMhEGOfA5YaR
	 MAf5Odd5nQ6nyX+0W+2mRTBbPRqT/bbWHLxZKbp1GaAIjh+giDNuSJmgd6oarolaV+
	 Nf+2YPhUT62Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D6FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435899360.16854.1560311867540665150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2811d33438aba0a0e706b17556cc03ddca3e7880df35b0cac0735ef3e5d3a46b
Date: Fri, 11 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744358993
