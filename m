Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3EB883F
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787878834; cv=none; b=HXBSgd3Aax713zNzVASg3bpiu52R1aZK8R7V18zWNw1OzQrxnd/KJPh4651pMdqO5c0VZ0ueqeHApakQJyQ04rsCaAKHgdQi28RFpLpFPZnhvksuJEM4uSP3+EXxzfmR+j+UWIyNKZy5gIyn5DoSTJ4j+eABRPHodn2aiFKHfCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787878834; c=relaxed/simple;
	bh=tPFWu+Qs8jKRGCHcR/YtmHUk51ZYAhsXT8X8HnBKT1U=;
	h=To:Subject:From:Message-Id:Date; b=U8ICsnbBGeJ5Tj/kFLefmHze2Z6FeYEU7lROluqjACaupR/D5v2GKtrppNF+NYTLwlRV+znUEv4mqPON2ytx533HRwWQvGqOuniEVOtnHJgEZrVGQFtCEeZhwymWGwpMX9AD+J7XhwPIyTcYFxIP0Unu1L0Arwojvww9Rn7qO6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNNYEoX5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNNYEoX5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD83C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787878833;
	bh=tPFWu+Qs8jKRGCHcR/YtmHUk51ZYAhsXT8X8HnBKT1U=;
	h=To:Subject:From:Date:From;
	b=bNNYEoX5sGGP4XOR18n7+/iKCNiYVaYgq/3fcZ3A5kkY0ubsaquHAuXovMWIXwgTv
	 zfjDoSl8IrCshINm4NhqVpjRrJnLEasUssRQj74faLe1b/VgrltmNzFmrNMUdoTLs7
	 RRMDG9Ts7WRBfNYcIIurbNqjC4syRGEsl0scnDbAxVuib5IYUsbyDIe6pUKR4Sbsea
	 82yMeV7ZspcRtvaXy4fOyaunATuXCobl4sNGBipqkFijuUmKRmAeEEdU5jLRPloGGM
	 ZXzAENwTPw50U8diHP7RpDzx2qq0Wr/CNlOAb52cuX2i19OfN1fEQNYnnOv79oeT+q
	 fIdqQCdCq9OiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC50FC61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787883369.26741.7257812641803556251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80aaaaa6c57196132bd9e02aa49322f41880690131262b460aca6f908a66953c
Date: Fri, 28 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787878833
