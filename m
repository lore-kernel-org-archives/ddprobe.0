Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774453B27FC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781729794; cv=none; b=G9xD+TV3O4Me6NT1nPhJTtnBZL7T+7H+7cHOUv0DlLLdC0LETKM/kbtggPAW15+SL50BxLXRWWQPkxTonOTEx1kmqokL9Icxzf5VnO/InVVSxxlJdbcbkVxvhHvAlYMxUpuoHJjX4sE1RtqzjSwIKuCLCgjthtQx7MREig+kR00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781729794; c=relaxed/simple;
	bh=xuZ/mxTxtKa8wOxCmU/7vyVClqM0/M4eUgaHBZp2dR8=;
	h=To:Subject:From:Message-Id:Date; b=V1/nzSWgPosiFru34wTrBdZCS4bE+1XF5T5SnMOXsSelK6OIo+AY000X5muWLu1z7sXWnXBE0kHA5LakaJu0aDYAt9tBQodZFrxgYyY8DYtm/tQdtCxAo3dExOvVQ3i6f10HAkeVkxcBocJgx2v/VbboF6EnKWFsaBfbXnELyx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJtY7yNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJtY7yNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A0C6C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781729794;
	bh=xuZ/mxTxtKa8wOxCmU/7vyVClqM0/M4eUgaHBZp2dR8=;
	h=To:Subject:From:Date:From;
	b=sJtY7yNbFC0cVoKSFIMGT9I73stnfUsrZCaWA4m+MUXL8H93FoMyWGCbtK20vxtv/
	 q7Iu0OkkGmlz/YGCTO7UGeuMBfwr6KgrZ3nwMovDxpJzA9k+D3VJ3N9MnNTXbhpKAw
	 TZxph8tSQJ0b7YeUBKEvo6nTo7C0yuFH/5d4zYLZ+6AypXWi9AcGwrHyY6WeK5iu03
	 3I0sGMA6f+Enj1VMwVtXUjK9Q3D/TTkDxGdoy9J1U7kmCaXU6FLdZQOI5GqnCHOTfr
	 GBBiA5sWln5YJcsOA8T1aYp1QXe3euXNSPaKdhDcSNZw5HxfOesJluR85RIzvaRSrU
	 WZLtoGja/EQYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0ECACD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 20:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178172979383.12811.16221031597307659432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad537239cf1632dd72f2d12832716f54c189e7bb94f41e72da8d4394e1b573a5
Date: Wed, 17 Jun 2026 20:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781729793
