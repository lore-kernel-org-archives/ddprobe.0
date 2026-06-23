Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2484837C0F7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782241594; cv=none; b=I0pFy5SyBk8OdXy7/vawLJfQxZDDiPWcHen1t2cleElMarwcljEIqFO9qBmEX3pVuucHi1r+jbmB3wUOjNx3BVu2hKlEK1134bTKKOq9qWopgNBe49BACPqeP1RLQag3F6rHM8nGnvqg0/ReGiU+HhlCBshqcwQKMk8AMasyJYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782241594; c=relaxed/simple;
	bh=seL2Cu3+Yz6qrbCP8iYiserRFFUU+4Qm6woukI1v+HM=;
	h=To:Subject:From:Message-Id:Date; b=R7tS9NRPliUEGEcmn+/R4/fsitL6IdIBX1zvCcInGVUi0SkWgJB4y6KQBQW+7Pn9YWykP0hd+fzl+TdPeaXrthIJHq4WkurZbws5URthqLoVuT9Sjb3iJK4EckkK4C9ywTJ7DKojgyNWLBEnffHRUkNvcYCYCvEUdv1J9aqMQZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePkZKzw9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePkZKzw9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC83C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782241593;
	bh=seL2Cu3+Yz6qrbCP8iYiserRFFUU+4Qm6woukI1v+HM=;
	h=To:Subject:From:Date:From;
	b=ePkZKzw9ijFaMs7mJ/LjyY42aCMPwdGUMSy/H6ESdaEaFzox4KhjAHWFgI06MjVkt
	 d5pEl+MKmOiZJHId+T1G38+ugr/H+Ggm4wlxPG6xJ7Za6GKNQH2noOHxxG38v15cjc
	 YVkpwXOSaNBiwhMNgLJNw9ki7JokanTDqrY5uYUULUTcoqAoQrGdxIuYoxKC2KYwDb
	 /ZQClA7QDo4VZJ8mkUAG655NmqVCRjid8lNKhOmdqd4jzxZOaLiePrYGzWHeDsQzlF
	 +bA80Hx8gf2cUq5YSBEgBLGBCEkf81E1qZK0RdyjKdMiEGD+V3BGbQLA0lz+7nVNnX
	 gxe6JmoQTE+XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D19CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224159369.3255.4829095436404953736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450eaf94aea2c484768bc80862a699e378ced68374b974617e840c0121e64fb7
Date: Tue, 23 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782241593
