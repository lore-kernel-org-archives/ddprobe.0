Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4111643B3C4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790970634; cv=none; b=R3LlyevwNYcN0K8HxRTGWWlu7CP80fptH5r+5wbtsoHfXYdmDAGZPt2KX8ivbmGoB7+CxkPBBT7c04Jgao8a+9o+wh9ct8XdKa+EaJH8YFoqWKvmy/TSrwenT3zfI/SFdk4FnoTV/9RlJY39UiNKuyXTG1knIcgo/jKdLkn/KbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790970634; c=relaxed/simple;
	bh=mWTwe16sMrJdoZRLv/3uaRIaw/bqXPiN3okei1GfuGU=;
	h=To:Subject:From:Message-Id:Date; b=a7M//GfB0psmUXAakA+MP7VSkiVwSbPnBUnBvhqbFFflZdShNLOFcNRygeKU26maGDn+IWEFQsptoiLftwXEZgwyv+vXBq7nwyLAUGSo+wjNmxkDVsU9DxQZktL+DgKxqbt/o2SRTiaIN+r4UVv3/gQelLGd2/Vl0O1FHqOfN3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYTKXefO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYTKXefO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD41C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790970633;
	bh=mWTwe16sMrJdoZRLv/3uaRIaw/bqXPiN3okei1GfuGU=;
	h=To:Subject:From:Date:From;
	b=AYTKXefObhQo/vOoPpXIEfiKTBs7cunWPG4HDFv3HTNAzsvVIqTuP2tn1TdkCUNVx
	 KsHkvXHQ1v/4ZUob2W0v8wKGyf/aZyMdI5/ZU8PS/eQINK98TpSlTzeFXJXTOgS6t2
	 gNOgZydOjIJsArQ8S5nW2FpfNVjPXO1gomp8nGDqkVnVKIVe1HFwt7oBvtfMGBrm00
	 OJIXFZEIGWydz5Er/OZDWVYQ5M/80a0iHG2cji1H7n3wbTt+f4A82BLZcEYwa/hq2x
	 flnyOE2gqp2qAYROB1caMU9wOklqeXv5rVQ/bomDuVYaikl3zkni2w5ztg/eR5F/Zd
	 GPlhm2KBPywZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE2CCA5FE5
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179097063369.11290.932655915825135809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23189e12442a882babc296ec51cec56166c512f8daafa7ff46f1db3660fbfe3d
Date: Fri, 02 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790970633
