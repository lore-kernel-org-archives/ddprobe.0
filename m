Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F993563E7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768220634; cv=none; b=b70WQAAR1oH68VmouaylttorVxHyDKJSE1kQIwmeWtAQafiOUwi8YKUMVl0d3YIv+uMtF1UIhxKr1vexVnxw9+VU2QJV7kFoXV3GWfcbQ5gB1L1rWOPKz+b0KWFveY665uVu2y9Oi+FVjLLE/pCkVv0az9Xu7NO+njIrRzks6pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768220634; c=relaxed/simple;
	bh=kl9I77UNUcGYa5ctZHGGIbFH5f6sV/6sHLuDM/2jwMs=;
	h=To:Subject:From:Message-Id:Date; b=bOdelMCZDi7U+CqBjEGUIDqNCcEqrJidqAZO1ELy0EN79wBF3+sw0HQsaNWsXEeCa0FeH3Pij4ktqga8c7IyDyTYhjVH9kBub4uOBSCMQbx5nCxltZhujevw/XQJ8aT8pjGc+QwUdB7bGLsm1vGnvOgIO5SEgp3uH7dHTTBiTLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qpb5vNKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qpb5vNKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D1EC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768220633;
	bh=kl9I77UNUcGYa5ctZHGGIbFH5f6sV/6sHLuDM/2jwMs=;
	h=To:Subject:From:Date:From;
	b=Qpb5vNKc7QG3Mf2OooA3wYRpxYbuBF2ovHfJV5Zs6OOmMi2he0l0YIxrm9tQjDPgE
	 ovsCaeR5CNsgxlQ3m+gHZqd746AmN8KKV5o5/m9I0rwRaENLrui95kVAZWxZ9zattn
	 kUs/v0fLqGfQZoYvde10nmlzjpfW1a/iuoDuNUbnkzLkjiEVvs/DaazgpLlrn7cFmG
	 6AU8Uw9rJFPqHsjrjWCdW8ptS2cdUcZGoBxh3yMF8cWnefdlDKLs3gRlf5MTujzl0F
	 lk5bgn4cg+UUIdYcnhuE0tBRgvHvGVXLY7Jcb55rqzNNsyJerhypfN2bV3AkwhOXMz
	 3OaXyepFroMDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E60C9EC77
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176822063358.2494.5211264700236870442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210375f0bdeff416caf2ea7cf161b1664a16ef7100d22f49ad38c86402cf9142
Date: Mon, 12 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768220633
