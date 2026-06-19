Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587423B27FB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781883394; cv=none; b=L7IIAo6vGcVhBskx0Xn9ENxX0nFi/Y/lU17Dt/oUQrM0bIFrknkcRcm0eHyPCns4EtCyy7NgJuTxlNxEJ9F3JGZDl5bzGr1w1pC9elY3BV/L1MaukIj97uln/lGgREHqB9G5XMxzWEDA7xeDHaTfnKFLwfibNnkQBvgfe+vHfpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781883394; c=relaxed/simple;
	bh=ziTCHyTpaEHaNcKxyhXSqFQJ0C2JNd1XNSC6aHY59wA=;
	h=To:Subject:From:Message-Id:Date; b=TJcbFeuMmKNc11qE8KnUfqSeFYc6Dpi77McBSwFB6L9LKjTHn/iO6yuA1uCtKzbZ3mIoscp1e2N+TsLIWnYR/lqB7WVt6MY0DfbZkdnTJPT+/TAVc3mBFPLVqPD6gPkgvXOQhwKATpffzdPZeW5TPZqSaqNUWff1V1KOY/WFgqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZar34H1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZar34H1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F6FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781883393;
	bh=ziTCHyTpaEHaNcKxyhXSqFQJ0C2JNd1XNSC6aHY59wA=;
	h=To:Subject:From:Date:From;
	b=WZar34H1CsiadSaoifuKMtn4hhdwpk2wtOpYrU3rvogKMt0QL7RN2FAtFnUOsFLIB
	 OHQUqO3diA0DEZyceYtoiZ00ozp5UvOo04DyZGNPa988G5qWPnVmVYf3jlIMIcbhRM
	 RBeOh4gaH5BLzzqwikTdgl0QwCdAOwD/4Egj+jjtbi0fIp8zdFx18A0WxzqtbQwXUA
	 Poy5gD8aJsoisGYHsy3Ql5H2EIk9EkBQYEk1L+GomeLKZbBT/4YMep7ibzVwpPVNbc
	 AcyX9nHCc1eaW00E/PkqdFwLS+8V5vTz6rWi3wYrWUwVvCcEYQdAuBmUbXfXprw0kJ
	 4iA+IyKQagm5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB882CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188339369.9399.4076484586423926278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79ce12f82f8306c783fb7544537fdaf9f479c765edd26d1e3e837669580783c
Date: Fri, 19 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781883393
