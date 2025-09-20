Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28793261B8F
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758403194; cv=none; b=DkcuMpvKLD6t9C/3J7MxrCpnOzDlLbo/lzKRwCECb/Gc4ddVFNRS7WnrxQ/dAt/CAX+u6skHeA3CD4WpLoastlotMC3szUok20YKG6UsEctpd2Qy6IHY/ixnr2EOkFbFaUZ8AC2YIlA2E4lYRDmFrTV4hSc+xl887IF/yLEqGIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758403194; c=relaxed/simple;
	bh=em6kRs2+10Uj4WYRHqIpGIPzx04qehCSUJsfRxjBqCk=;
	h=To:Subject:From:Message-Id:Date; b=kuxFErUm4auh9wfXN6Ew2alNC3/05welhE9LKNE7KoqidGNoKSK+t0/oKApc7RZUGJOOzj0awFNmB0Qq3sWWg06ADTLv9dAXzpblaUxD3eTIH2nh2BvVstTz6xEnO/tCxvPg2M6bRfP+VqbPSgbPQdgI5nUg0VyKcKj/TEQbVW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0aeCxhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0aeCxhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3190C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758403193;
	bh=em6kRs2+10Uj4WYRHqIpGIPzx04qehCSUJsfRxjBqCk=;
	h=To:Subject:From:Date:From;
	b=P0aeCxhNBO4dcLOFYkkU7hgopNFpPlRd2ogkl6v24+EiPRwkajJSo/uxsRXIvhHgF
	 SdkTM5Hx5cocIDG/xXVH1TD7xkfMEzQRKbzqh9iHUAGGpiX3NliO7M71dkyIQqECGb
	 I369P/nrTkn29rIF0iy48OP+QT4BGcyjQ68ojcIOm8qxTeAqnuw187F3CFCC8+/wZd
	 eblT0vDjhPonPdMezcKjU09DZaFNpIqYs8s20AvyFngB8eWq+OrGd1NZ9TUAgisR13
	 3iZzZ0n2m9HF+LytSovVFwGAbPzD70LRfn6MdFmNaT7OIcCqZxdBEJdiWsV+Zka/GU
	 vrUOiTE8qgHNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FFCAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840319357.21524.15560238432711410326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3146f0130b60415b186b2498342034f68cea6b6140965b616927709d90781c9b
Date: Sat, 20 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758403193
