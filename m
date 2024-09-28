Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB92157490
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727521554; cv=none; b=Afu3OCJsoB7WaRWeylNOPt449wZdh0u3tpKNT7cTaEZqAi6yb+5xGHE65KYMGTgvEVZw17tyuttzMZToWd0/29//Iso3twMsEfRkkDawLXr+5DDXwnqYHVFqDK2TFE1/12dL2T9zqp9lH3khFLXb+3D4n+oX0+tSIyGcW48hUhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727521554; c=relaxed/simple;
	bh=yuqw8xqKAuPEi++Dw2hkqRs9k06q9ehc44LN0G5yrBc=;
	h=To:Subject:From:Message-Id:Date; b=LBF9BpDDYNeC5LwoeRMVNfyQrsVjTLR5k8k9TKEZSYmrKLDX6+5F2OKkCMJTuwDtc2loUZ+jLuqYZ+fbxNr6nGt/52uouiSu8rALFHZaO3esy+7TcfcyAe7WpossFbxvhkUG8SnTghYTf4KjiexUVcR8QvEBWA5YPGerJ54PrNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdwkY4SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdwkY4SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D80C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727521553;
	bh=yuqw8xqKAuPEi++Dw2hkqRs9k06q9ehc44LN0G5yrBc=;
	h=To:Subject:From:Date:From;
	b=XdwkY4SYPX3iIo6A1V1/fwsHJ8Wmftj1eaPkdLq5KoZttPHtsd9+B7/g2QuUx8VNh
	 0txLnUv53WODjut44n9rhJy5adr/ENzH85xhWAH/EoC/yxGVm/YsfTmQK42QKZ69bY
	 J/M81QMyWmYAn7RFAIAqk/RV3BvcQOy4DmkTBOrt0duc0No34DOuWSd3l21D6H0pH1
	 eJpSwhkUWsPBlp2tGeShpPFAQryW3g+qNhqMLkTWfZqHITXh/5gQrY4iY8cP4p4qPo
	 DOuamBmYNk0Nliw0Ui0l2XSt5DEL2tIEH4hNfyZ8C+5uH36cdUV6fUC7LvkKr/BdnZ
	 WtCD4Q4mafIGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0937CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752155363.20807.11570761969654262249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59a753d1c8ed3e4aa3cc82c7688a3f442492d00337a01856452fc6bd22ffebe
Date: Sat, 28 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727521553
