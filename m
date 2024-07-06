Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485D26FC2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720229723; cv=none; b=XEnLlazUJiP5EHj4eYXYGlYi80R3pGoUMKTrySJsBuOJV8mZMmaIAbydBcEmXt1Ts2GKi5RD2zo/UpGeOJXPOTJLCiBfje5yGPf8XVYhTZECGAWMP1Pc1XK1ilL1l94a/AAA5tJVYUL1FTEEcihGU8jsC3MDd3caHIOayei/2D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720229723; c=relaxed/simple;
	bh=U8rG7WdrdoWzZHZWiEuaHKcPaCCa9E1D61TR+/zLp9w=;
	h=To:Subject:From:Message-Id:Date; b=Lis5vZHTbGH3Bm4WtxjNKIaQQU3fGlMUW6AcnsSsPf07XcE73ltuPbXS1RBo0UDhysSKm5PxsyUq3A3gwmgiktsnNCBQ9ea+9h9C+w5uB1PgH+QxNqbt0AqzioEzK389Qt5Uku8vU7ZGnJmf8ebeRmLE7jq7+T3edNOR0vwpypQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH8erP1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH8erP1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3196C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720229722;
	bh=U8rG7WdrdoWzZHZWiEuaHKcPaCCa9E1D61TR+/zLp9w=;
	h=To:Subject:From:Date:From;
	b=KH8erP1hq0vIkYztfdfndPBkeF+09tYfwgLunDuxzc+/+7iaWEkyIHlPqyB8g4vdz
	 c+cVZaVq//IOxrDnvzz/SHHv3NfRFsTen3TI7k6boL50NufxN4LLjEgw0wuvbbXMZJ
	 tVciSC+GoXj5Be3AOB6MsXonHywxnTob8Rh8wtlqQCUFF1juIFvbRW0VVzTYW3K0L0
	 vg5YTJcbvWF4yynYnHbajKMa+NRxEMHcy+DV8g9xzytVmxrEj2JiRk4BNGCvwU2NAi
	 mRRDbEYyLaAeeRHUIxXTZM5P0jmQldpUplKocKw86tEKzQfeaZfOS76CNohfxN8azW
	 U4eJORlB8rm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ABAC3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022972275.6151.328712270671032640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfe5ea7ebcc0e3d726db1485c15bd48a2057c33d1d8b1a518c1375460fd09f51
Date: Sat, 06 Jul 2024 01:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720229722
