Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70CF372EC7
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776522453; cv=none; b=iPZmSIge8KmmyfAZGrF3q+3ew5oPUcOT7SNykgbfYyszx08nO6Rr+NFXoHe3rzudah21ZLXrsrxa8TBBELRK7ichhuWVEb4obZ+wpaWvqQeM3vz0QYe858A+s9mIm6Yq4bXhuKvmgvVsdeTnSFgN2F3qm0o3aXxb1onP4QqiCZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776522453; c=relaxed/simple;
	bh=I5udP+EZ+J1TNnTJszUaQAeKuCeCLcCvid54e3QQ2/I=;
	h=To:Subject:From:Message-Id:Date; b=IqDkIk9wjW71cM/xj9IqcquGSwMAJIX78EVdvvFcKsZnQSSQpgvGt2IcWmTp+sFGs+1KJ6mOvJoy22SIRu6CH64iOG2pQ8Y5qxhHd/NgF/kUXcWLL8dh5QwKdA5HlUS7yN0yf7gQbKnkIeRzftYigX9+FcA7OeKPcnu2bnacsxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6xd4+0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6xd4+0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7F3C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776522453;
	bh=I5udP+EZ+J1TNnTJszUaQAeKuCeCLcCvid54e3QQ2/I=;
	h=To:Subject:From:Date:From;
	b=X6xd4+0MYojPp6ht1vyNXiYrlEsj40ANL9TxzpVbVSHoGQrXsqrLfk6kIV9vnCupT
	 ZzxshvknBsCdEXceBEEBztCZRo8n3lhgYkOovyoxfPybNc97RYbkAjPlUVFPrkYZae
	 /FKJJZn/LfiplBIbHaQcPQfQkWO0mOvr6B1g6bgAM1R6jp/pILycZNWJN8eCrw8Fuo
	 JSt0obHNnLzQouspTDXxodcWBisKl5PKpSdxzJA2lvUE5DRdRRNpr2w1SrWmvei0FL
	 5MJguwPiUo/bOv/Eur8EN9WpRvE3mYC1YbmOAVVmy2uk2VJPyUJ+V8vwf151FLhWtU
	 koibCv09W3yFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA60F99C82
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652245368.14324.2912248249820953000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc51e2b84d3b0c72c52093f7bd777c813971d66183a1214e6c245b83af5d6a43
Date: Sat, 18 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776522453
