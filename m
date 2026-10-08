Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B76D35E1AA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791502234; cv=none; b=JI1UHEtafTTlS2HZcb7+fb8w67yEcKCHjz2j/FapUdAwm240j/puRxo55iWRC7PcfPqbJ3mnezU0KSHDZfcWi5aP6m44uLBb1c+U9X5mZIKlZp86W7nk6BI6vHfyoy2Vm06MkvPXYzTg0jVslLeBVimGJMoVuiIRrxAGk3NoQqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791502234; c=relaxed/simple;
	bh=xAEECLUlwlUfWb3OZsb+2R2SiRuCto+hGWw7QTbHwlM=;
	h=To:Subject:From:Message-Id:Date; b=dMGJST5LBvCKxVuNa3p5lr1pCcYXG8lBCNaKkdn5SM1LZP5twB6Aiwuf2WEVKMeoDx7kIMCFz82FvCsEGpjB0e8g/FiQ2a2QbL9JPyxFZuTUZv3keHGFwFYoY/RCovfKDsFL31fHdaSL8NV/Q3q2iFN+l8igO7Z1xRzszjBftl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sL56GTQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sL56GTQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62C6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791502233;
	bh=xAEECLUlwlUfWb3OZsb+2R2SiRuCto+hGWw7QTbHwlM=;
	h=To:Subject:From:Date:From;
	b=sL56GTQe1dldCoPMK6FiPv9gLm3cXy6yS/6sPERx79iJrRp5A6xYRlR/JT5UFugqT
	 3crXMCUNuCAE+VAi439wZgTLlf2PzwuxMAm9gpVCDEgK6fIaGh6m3rRqcS0Ud7PTY7
	 YeYtBRvFwz+jFWoxwiAaz2tnyTKynGjajSaPi33picZ+jfK8Oyh9A6cGxuVACOkInm
	 bjK1HB1Jm4Ik5sEDSvly02lCVyemnNxwpregC1E+B2Fp2Zgid28K3EojeJK2bCWgxi
	 5Z+33KJfO3WIgFiMb5kF4wV1g72Gp5STNj2G+XIorEPFHn/YAQRf5IKuazj2rmXg+o
	 P7f5juuBvgFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3B8CA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150223368.7314.2729301785431976835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c79f9e48dcac186302ca113e0056166a2dd535de08341c2681264e401b08912
Date: Thu, 08 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791502233
