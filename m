Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FEA3E48C
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715370743; cv=none; b=NgfjoYwNF96m211SRzT7Lj1HRwuP3bF12lRm1uITOaF5yNe6zcmqb8s/QiXGUVloJaiZXl9NEudddic9iV9bxwfznOMApgHhEATKb5xFF0XkHLkZq1yLpvRCvI4B3kHzR1AcAIzfw3bBlU8WQbd4Bv1KZxcMgUw6O3W/wEVy7Q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715370743; c=relaxed/simple;
	bh=LOms/CluPub+OygDoOcLZT+AwqngMaLqaHbz0+yovQE=;
	h=To:Subject:From:Message-Id:Date; b=Fw0triKmqmybpSrDbn70hMz6DpkRrczFU6R5zLELhYG0amrUInBjqPORoyhgQP+6ClCDlz26BHBnj8HjAoM0g18cLmHkpTtx8/ZMG8PeJVkyWMa7T31vgDFwOU9ySaevUfYUgcDQplVCVSgh64g0XsWS1r1Gni+D0VwwhYIm9Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xtn2tF4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xtn2tF4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C18C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715370742;
	bh=LOms/CluPub+OygDoOcLZT+AwqngMaLqaHbz0+yovQE=;
	h=To:Subject:From:Date:From;
	b=Xtn2tF4XAvdwoCxmirpkMAHExbhnuNUwXn6vZrFrDDTQ0uyhJWTy0rflyzjCnWsw0
	 fDfEAZBlJNknPZFy2dJiDH292epFWX5TXn/FeeuPb8c6BM/9YFi2bEPgrjKp6OBedm
	 FqOZ94PG0xb2DHYPgGK63iKncs9sLxo6nlwLsuV/eikFBZUe6L8EkuYFcDOYmKV/w1
	 FrBP0eZMOtrH2egFIlU39csdfNNFtlV5h85g+nuGbQ+NPLtR0edXyQV0LHH4MPPiI3
	 DxxVgGeZ4efc2BaFysmwDUi/nWr4iTlpk+0QxiHo4OOmgw9hE29QRZeHvbZYH6n+j6
	 Nj2NQErodcvPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36CAC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537074277.7387.6683607349275966117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b426bd00988d66c576723326581fea4e8b073076da25a729b432321723da8d
Date: Fri, 10 May 2024 19:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715370742
