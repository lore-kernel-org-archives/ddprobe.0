Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F321B7910
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776474453; cv=none; b=f8Zc3FfNnyvMggXEWpeExrf54EowiNhY9daeLFYaFvWWJ3Rq74ysP5IhK7EmjPYwaFP2dxnvOOwLQ5jWZ3qkC/Cl9T+47+CKvlgyJKy2lrBZ+sSFmCoM8BAHA6uWUhjXrTqLqUDBwbW44k8T54GCzIu/7C9xd1CbXl+kQa66smA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776474453; c=relaxed/simple;
	bh=X+BMUF46Vqq3HEeq4ati00adja/YmvK59Wc5ZL/hqv0=;
	h=To:Subject:From:Message-Id:Date; b=WkB0uKe4w1Bvf/jFSS1olpwbDIoVRAjCBhXTJpwjvcUeyYfza1mwc+4r+IKEfNSey1j5AgFqwuOekU1Gu/Cg6+ywpI3Tsd5J4j9P6fzuiW3THyzptzDc4hox2RfRn2F2o6aqiKJoXOBJQ3ikTkUEMoWg7epuwmrA0JihNn1OLlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odFoiYhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odFoiYhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2DBC2BCB5
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776474453;
	bh=X+BMUF46Vqq3HEeq4ati00adja/YmvK59Wc5ZL/hqv0=;
	h=To:Subject:From:Date:From;
	b=odFoiYhvbU6wrMeV0bda4RdXV28r7PaEUCur2D3orXVWVInGGsA2zOUTAvIyJjYDB
	 c/gP+AEtQBv2lZDhaW9xNCKW+HpNNNA0RIoCODrkmtNoHbvvGdintwtAZ+iYf8M2Q9
	 Me2hAhHbZyPa75yRmUqwyu5Mu9D1uSYRK4R1iJOAFXQkig7+D1FgPj1v40TRgedkhe
	 ARX64fn263eIeySo37UJsPa34xOW/G9i4aHuU/KPfCM2wW/uwtNTI5Zx18fpCVhJUJ
	 sXIlC/b30RVfWWUqqqqgvefaD46enBZZ2Yg2Xl03YckSIeKhAWkoZcHBaEUKxLRFCT
	 b77v+C1OyVyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9121F99C70
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177647445368.7038.11113617500310164944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58d96b6ab9f59d0061e63ebbd0767a7fbd0854223555343eef625c47d9e771b
Date: Sat, 18 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776474453
