Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE4739E6F9
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772728494; cv=none; b=YDwaiGdpn4Pf2M6Zg/tv3SgHDim+zXsDv+TmW+PT+Yjfb0RQ8PgGCI7EMkYFXcEvQQU/ods40OW1UqLJOX1KedDnWPaxFHb2eKcU1aDSZdYuk6ZKaBt5ignKt4PKajr5rI2Z4A/oBe/Wl1HdL/0a3fZ4AldMlsto3h1oExk7Kc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772728494; c=relaxed/simple;
	bh=CUP3XHMt0blk1gmGCO8vl1usro4TC0bODRxkT3wreVo=;
	h=To:Subject:From:Message-Id:Date; b=KajrAgDyDguMPzQ8Q0urBQbwKq6fHNYb2P0Am2HUh13efprkQPwAAKFCYwyR312Kjs/vbHt78/GRsGHqkFDpcaCwxKdQOYctlMuJOS3boSwjyObJkNJVnj2FYi3pdlOMd3m1+6kUIK+pheSJyEf3RfLs1eTCe6UCJEvScwr/hpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USRqLzQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USRqLzQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B10C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772728493;
	bh=CUP3XHMt0blk1gmGCO8vl1usro4TC0bODRxkT3wreVo=;
	h=To:Subject:From:Date:From;
	b=USRqLzQcuhHXofR0mw0F7rf0Uo4QVES+haeK4jfxSZDNmELx/pnN7mo5IqJtDaT5j
	 OrUddamolchabbNxWkkNbyweARFPaWtzC18W9m2AUaSai/feQPpGSI1u/vV+gNgFtn
	 g0/Vg93y5fBtRyiTvt0C2z0tbR0tOplQ7qEJs8vf0ONVBG6q/TM/5AG83VnujY+vdz
	 IG/N3c7xbphyYpP+oALiW5Zt3kXYxcECTrY0B/jQl7J8k0JJ6cCfHK8NTgbY8WiNBq
	 RgLdkaF0XOW7TtJb2Ujxo4tlUTgfnryj1QjAfQnZbkAZAkjYAsAiTD9bPIkH0+UEyl
	 dXP78vMJbPO/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FF3D32A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272849358.11089.8513584597407879868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7e168d84a95d155b29dd0b9995e13fee104ca57102e6cba5493b615d0e968c
Date: Thu, 05 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772728493
