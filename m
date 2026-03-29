Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BB431F99D
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774787094; cv=none; b=CgUfHGMgPAhH8dgfVNJGSQnlyMpiL0lVvBtvdRoRHvfIeeXKzlv0vCbl/i77PEsYCfMBJ7Dbhvoa8kPPmdmy3dfUGPvUuvaXMG75vvAWSKKQ25BlrOX0w81uAasAvfHvh6gzi26Uqp24OctSqvTjq1vB11oovDSjtyPn6RWf/yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774787094; c=relaxed/simple;
	bh=UpypdRsLJ4uUcjZsmV8HnOiJAgsTMcXydVdZmKCHlgk=;
	h=To:Subject:From:Message-Id:Date; b=ND6ZQo+RzRBFJF1b4T+JNrHOXbMNdpPl1+kpouHDgJKuvw6Bb/NCSTtdVLsZqghV6bI/BnPwoUbLLELnMVlGREdZ+9NC41EI+IwUW6mTj9iPosxDNIuwQKpx+mcsulTDBGhMyt6g/dEsBiIhHNhH5/vKq35w4BXhicveYH4Rz7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2u8ScLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2u8ScLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF1BC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774787093;
	bh=UpypdRsLJ4uUcjZsmV8HnOiJAgsTMcXydVdZmKCHlgk=;
	h=To:Subject:From:Date:From;
	b=t2u8ScLemMnN3LWuAFwiE3bEIa7qs6vQnY9QKVel1jXwIIl81LGFCMp5ODdZu/bCs
	 k5vBIK8VRciO9nd4+/jIdbPShKfE8UnTREbNUQMMUlrVJh4eYitz5TQMB2rUr0R6Tf
	 Ss1oLHgLgkGc1FxNhBNFMG7FLQDHkde7TI9nE+nC9XkDZnM373EdtM78b3Hav2RmQG
	 MV7Jghl/rf+HU+yptUs4TEfY4UEDvJ8T5GdDJLp/CakRsbkUuCRWcsMGmt+DpjVzhP
	 7v2yIZ05hqiVQ2pN5QZcOwcSv+7TanETfCFMbt5+XHth5HOoM+d+rCcJbgx0TH4+2r
	 3T1m3B/YfYYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97195F3D5FF
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177478709358.28194.3134400371892237681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd29229e7e00cb90ab62e52c8c23ee61a35f596f25faa3d2e206453b3d36554f
Date: Sun, 29 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774787093
