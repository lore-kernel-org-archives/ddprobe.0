Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEA23EA66
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791352834; cv=none; b=Oh5xHOcSc4zWzaNXRlXj2oLbdwjKjm3liGchx3j7EaXd1v9socwXquBLsEQrjl2XZytbXFY2Dgy7CMWBJL49J8iSdvTc6PSzbVIj3+TkWjCOoXdkPiNu2hiMafSgmZwN5UY4ytfFKneMJJnqdcJr6W6UlPwjwMosqZkth5TZcLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791352834; c=relaxed/simple;
	bh=s7hYFi8mQdZlywgx4vANZgKv3KYZSB6ntlR30godhVI=;
	h=To:Subject:From:Message-Id:Date; b=Dz4b2dKFlfmY9PCpMTzrYsv+BmTf/OCQE6hf2K2Yc2MRZaYnTRfDDtzJpBs5jIUJpOixX4hmnD2pXbp6+kSKstsK6VVpm14f5GBbBU7HfT2kk2QksqCl40krMplxDiSkHvRb0lDwEXQJnFn/z9Th+TqJvErfv+jI0k16NxmCFiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RXnV36+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RXnV36+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2C4C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791352833;
	bh=s7hYFi8mQdZlywgx4vANZgKv3KYZSB6ntlR30godhVI=;
	h=To:Subject:From:Date:From;
	b=RXnV36+ORWQtmythUigPLAU553eMxU2yjDi0paAUMkhD/0SDo9vISv8kFUCSe5xtI
	 6DykjtlKTcVinE0hzvC4fywUnQq+dp6Yt2K+UjtLUj7fGxQOW3mRjAcKdZddVuEX51
	 hAynxvm63dpSILVDF0+I2mBLeJ9EwjpOZusRbF+qrK/VWHGB94Jz9zmm54YQ2g1O6p
	 iwF18KV2XJCoJFlFLzLHV7K34difigAFSO0YOEbdYuNGCfEBx1UUo43ofmdx45Fvp+
	 b7BX+uWnYHoAIm/jE4XcjSKbq0zOyVJxWjcdujzOvulB70fLlGKeVB94vnsFLkAVcM
	 c+7Z9oQ5Q072w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A9CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135283369.14443.11924004050627298249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5d984fb6a913da6943547ea89b0504c44597e65b98028cd467cf4aec5de593
Date: Wed, 07 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791352833
