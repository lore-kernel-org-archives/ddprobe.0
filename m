Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C47D2C11E6
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779406354; cv=none; b=EMGF9Rawh2goVKFedSaKqsVmsYajQjgvalPJE/hypeL+WIY2XJOzkHAXbdcRZ4ONdhh/OnvBMC3XS5fg2dHtwjYXG7t9PBEQCsWuCnDaza1punu7cDRv2djYI6eXVSN9Pkv4FVSPJSOl7WqPD95EeaUSMmZjcZAe+kz0oILfhws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779406354; c=relaxed/simple;
	bh=yzkItmsCaD4okDncNPyaEK3BB+2Aoa5nMl0fPtfCjGE=;
	h=To:Subject:From:Message-Id:Date; b=Dod+o7KfX4cIRHlyymr4G5dyOU8tUzrDR25RbajXwdIAu7e3az6GIOOZeQcrS8aO/2vGNp1iXZLHgcCDU1xlcVEi5xg9IKKssfRW8zO90A4ho4uj5KzZorRXBtQDRE9lp1IV4HE41yZHAGLbEYb9DAx93/4GwEtZgtkV0cPnwfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW9uxMIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW9uxMIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D29C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779406353;
	bh=yzkItmsCaD4okDncNPyaEK3BB+2Aoa5nMl0fPtfCjGE=;
	h=To:Subject:From:Date:From;
	b=mW9uxMIpw4wlVMAxb7IUo+IPorBYjkv5H5osrhEMK8o+ZMj5OAMQZueKyxeS8vSP8
	 2P9HhdfuiVEUmK7ssnaFi4taC8Y6DdkKaH7Lb2e/5QgvY+4zWqxUldtjNLgxnNNkyc
	 1JxTPvZsXUT+GLU8wKqpNDKGYddhirAbNusGPw1DUPRg7oqVZMzx/8QE6tYxfzsOaD
	 WAazrVjQSgCNqBRPXKn02+RhUyV1SqibB+CXC+b2kdxef5MwPVbKnrP/A8zCH1dSMY
	 ILKOnRIdVSBSMlIPBVmAxdRAZCjOU0asu91hzQ06atS5MbrkCsZQxzGG1NGj3mu2+0
	 ULcC/Frg6vlIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C11CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940635368.20052.5611531923141774648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4afe396ca6d46f964a17c87d8bf001ca3a90ae987c5f516e67bc34477035520
Date: Thu, 21 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779406353
