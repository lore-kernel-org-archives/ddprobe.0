Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A936B135A51
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713305963; cv=none; b=kJSLY0t79hxdUNZkXU4Lpi0ylA4uMhhEolPagtHmNoLQj52FZ/bjfYdFrwCckt9ue1PdLaH5Elu5ahNbmQXvqgJGXdaypKqi87XSufKjCs5ZpQC5DrwJZM+66LVo0zMzHaCqxqRUOOX7sIpji9ca8zbV57Xka2kuwy2g4hSqD3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713305963; c=relaxed/simple;
	bh=Fe2g+s10krlPP/m7tJFHOqNXYrsiIrSIxZcL0zCwLmc=;
	h=To:Subject:From:Message-Id:Date; b=VzVdASlDfKqaTifDZALTdUB8BucW3GyDIWCcxPXt3Xe/TxHW9kO4dagqkyU7j5EFE7tCDMkrsdMzVZXlYDupOgR1IcQ3dqqTfR41+9T5O5ogGAWdrfqkTt1cJyxhzPlHo4NOHZjn+zH2B6InZWgOeqLRf+f+nQIBOVoWgvJSH3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfCdo9iX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfCdo9iX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 32D55C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713305963;
	bh=Fe2g+s10krlPP/m7tJFHOqNXYrsiIrSIxZcL0zCwLmc=;
	h=To:Subject:From:Date:From;
	b=lfCdo9iXYqeBbkTPgBXGXZ5Ux1yH7tNW+CxBHjOsbSmdBLY0kekYj0ZHuDbQfKL0Y
	 CELDqyP8r0inn5kUFhZp2GsECvLaHRPZneZoi30QnuevpEyCTiANFUSB66koYoesVR
	 A+y0cV9yqW8PeP8hS/pLEnjGeHUGtmLdsOGHBpJ5fLrILXXgNfFnlVevo+ATSqoMa0
	 aWzwEfRr8kwTN7CSy9/4zk1qQC3jHPvBVsuXLgDQwDEfn+boQR1g1Sseo+w8jx1tuo
	 TFN/FebHflhs+ULRmj1Ui+Jc5Wxk0QjsGfStgkyZ40UQxP7ZO50CBGIQRfLs7U+53Y
	 8xl/hTYw2N7YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09BBAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:19:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330596296.12818.17528257122585046457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0638ae118ca1abf1309da55099506df99410df5ad65b7661e322ff98aea693
Date: Tue, 16 Apr 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713305962
