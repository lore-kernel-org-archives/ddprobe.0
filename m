Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DACA346769
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775859454; cv=none; b=JZYycoD44ysMkN/YBL8a/KFR7CZzsvOVTS2/tcfCyZKV+keQHPKQxsUwJg//1wcgKqNx8k8ilGW4fvZMFcnv/2HlRPfdEQMCkdeLs4vgK/OQjiHzP3Pgc4coEAsRIMUEl2NKSwetLjPm4b9L6nwCyC9p5siN66P/tJ7m/avUzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775859454; c=relaxed/simple;
	bh=5E/rUKl4uC3EkSYmQu/Vwaqneu4k+6N/lCtYkjD1ElM=;
	h=To:Subject:From:Message-Id:Date; b=khyfYgfvhmr7WGjd1dHiGWb0yo+HmXpMBe6zBS6j+FoBK0FCNsekoOZ8y4uThebFU8xUiGr9Ki5s/e50eDTDd1O5+Z/WbzTxSEXt3D6Z0Jok98PkRpQ/+qP1oaOXiYRcvMiHQcUvFofFWXNt7gTPxGXJWLWCx4eTBhs4fvqI/6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXLB6yAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXLB6yAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B883EC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775859453;
	bh=5E/rUKl4uC3EkSYmQu/Vwaqneu4k+6N/lCtYkjD1ElM=;
	h=To:Subject:From:Date:From;
	b=TXLB6yAemu1iB1Sf6HxnMIU3bNKn3TGNwmzt4UHofygXIP4OKUybLfeBnDgV8heO/
	 zrQnMabiT8ftTbUMCC+7n4FkwkvD5jcwA7Mes69VZ8Eaj6SqLtE2MlNtDkTVu2+ber
	 u4e7wikC1/CQMrX+TPtah1I3zC+YyEvLF3egi5YEPf+AcatSdK39RkQcSKsoaOv/UI
	 neZNvjuxAgT8tE+N6E6Jw0zNclKaGeio+Xn63WdWmg1TUikiqZkJmUeVTWtszMv3KR
	 LUneQLzRTLvtyz8ir+Gmfy97qWKwaKwiJrxWHBT1nwW8YtuwQPJVCUPftpu+sy24TK
	 4cE03MbYWXN7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA150F45A0F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585945368.11631.1200600628951556232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a039e1b3b23fe9bce7e958b156b980974bd19cf04d3ce72e9ab0ecd0e219cc4a
Date: Fri, 10 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775859453
