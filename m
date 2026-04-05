Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A8243951
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775416534; cv=none; b=BiYI3LPnU6udJje0YjQNTH4cmAWpioDD6RMxbBD1Q/jPl9GsaQzFrM45wh2vmJ2EkdK8gFEnfG4p9ZCdmPt86iJF0Nq/b4hFRkhNXKi2zIuai3AQjV0EYYd5XQPhKkzqAyo9MXQwK57AGEab6tFjcZlAarEM/eh3gJCL5RvvsXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775416534; c=relaxed/simple;
	bh=EvazNwqxir4K8Zs1uwW18zrn7ckLVlxuxvDwLjtZXWM=;
	h=To:Subject:From:Message-Id:Date; b=pJnLoHNwX+Ycila6pPs66bffv6auRk/rC7L7e4eoC735HPiLUpFPeRuHj+E8r73ssa5KTRu5OwEl9MZR/EqAjMykKYm9BaJPuDWmrUzm8f6yOX1PRf7erEA382ztACC/aM1aLBbKDDoACqk5RMSQkT4R3L1iNd5RyvoUxkVnSUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVuB/kOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVuB/kOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AB1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775416533;
	bh=EvazNwqxir4K8Zs1uwW18zrn7ckLVlxuxvDwLjtZXWM=;
	h=To:Subject:From:Date:From;
	b=YVuB/kOQQtw4nIyWKuLwJMPg/GgAeA+mKDSXR7bDVwGxj/ciOqNaXSUXxF9WnOkfp
	 dOmwuIFigXinZbbnfbzKQj+reCa9v2tedNMY4kViFy+gmqBDjYdEKSUTeRo08QGMV4
	 mhCZ46VsDSwXpedaojpJct0cjsV3YPJu4lyCyySucVD7L5QX30PBfrzVEd9BlCrW2U
	 4LuVbHsxEZ8c3LuoTcH1pYVQv0rtwwhXi05q5aSv5RAtXR7nW0qe3F9xzgIoWPq12M
	 YTwpyWPmSqhkzi99VkyR92aTGeKngwnO1j3R2MNt0s4cgKTm8QIiIWMaRM4FqEjQo0
	 WEUYL0er+ANWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38F8E9D80D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177541653369.16824.13365703367357747743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765a67978aa8dd12233589e257e00559a22ad1eab9fed3ca4e1f58726bd9552d
Date: Sun, 05 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775416533
