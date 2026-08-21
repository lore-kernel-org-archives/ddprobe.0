Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803AE4C6F02
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787328634; cv=none; b=uj99lCKpCwUVGtyb3yX9p8pJjPR6OND6rf4SdK/noFW+oIMg7Mg6oqfHmMzCvqrnISmz/mv0kaN7yDz+Ek57xSiBzF3e5DaMEsP1SBRgg+wHVm6kzz0zMcliomGak0xpKuzZnUP3QZxa7J3b3RBjSBT2kvbh9EocjEqEco0gNF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787328634; c=relaxed/simple;
	bh=i+3aSypDFbhiIdBUE1cbeBK0KVILqwW6hlps1Lhc/IE=;
	h=To:Subject:From:Message-Id:Date; b=bnkSwaLe9/4LNOwEkXHwfr81d0F4+hCiu/TwtMPGaW5yyB6v/k5oePd+dj/45PepoUtmjdzWxQxkz7n1QuOqp07WH4mRZMSXIcS2psGhKtO8WmZXAPFRCYq0Ono7pSVInbvn6mA6sbAY9X5cOnitfrPu88LHHp16SjemMnNrOoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCIRY6Qx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCIRY6Qx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09D83C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787328634;
	bh=i+3aSypDFbhiIdBUE1cbeBK0KVILqwW6hlps1Lhc/IE=;
	h=To:Subject:From:Date:From;
	b=OCIRY6Qx6T1F8DfAjf4R3n7q06AXV1eE/EqySiBFux4vWzghd7o+rpgrSVj3JvCfN
	 Z8dJtXU0LxJGB6ZmdSrBHfFBBYkF5Y0Xj+otrew02WTpa+X5y9jH6J9sVKStWwD0qg
	 Cl+E+iZGTXDWB63hOjvkjiAXLlGyy1G2TTNdaMAn47ttjRef08JtfgLMAlfvSaLMSt
	 fPrz8wq8BR3eRH7+lbFOumU4jH1T4iguPc7zUmjfHYx1lErY1XOuZHHIva8oebsHc9
	 UuTBf8qwKcpjS1TfZlDqLLYi8zDAlNj5h3sJ3A93HY5v2CBuuE70lFfErhU9oczPPl
	 v9VXiddGs9ITA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BC5C5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732863378.16454.17307034909533410452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab640bb80ccffb8e0604c82f35e31d88d519ec177d7cd63c403a797bac0ccda2
Date: Fri, 21 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787328633
