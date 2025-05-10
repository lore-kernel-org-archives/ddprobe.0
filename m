Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2CC1EF387
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746869394; cv=none; b=NKeFeNxH/IAv1h0qYI6jMt+q5I0KNDXlE2p8zyaBu1uRlwJ91RYKNWymdO5VUWfWFbznqWf8uCHezpEn5tjvGTP+5TxTf+aJwPkWTzDJHFiU9TSdxU0asA941f3BtESdQ69opZeJCAeTLPa2bjIFR+nYJbG8KMuF6KdSs6/cTU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746869394; c=relaxed/simple;
	bh=9YNdXA3rov7E+LQaibW850/fR9I2Df0vu93BHnDhtfQ=;
	h=To:Subject:From:Message-Id:Date; b=qe2MXZHFjOP2fl0+DkbwWyh95RnL4BiiI90wj/bb9bhc8J2QlM3vf6huHWHv+CnUCelgd+TT78m/OBimSkDp7q9y3vFe4t68VZ+aMUPQNo8kP88oaveF2fkF8TMT2cojSQljEl6FJmUHfHW73QXzAxme313hyn7W2N5j0zzSNPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYooMHhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYooMHhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9840C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746869393;
	bh=9YNdXA3rov7E+LQaibW850/fR9I2Df0vu93BHnDhtfQ=;
	h=To:Subject:From:Date:From;
	b=FYooMHhSP01/YQWGTcVhGIG0t6LW2JIy/KUIKaUz8sK1n5o9S9Q6Eoayi/gib7d+T
	 dawSP2uvhva8P0KHmsN6OdNK6QV08K3STK3fHk1yBjpTR4N/dpTKmkjNBxUlQTIALc
	 p9i30+d0YPilAsKfywm9kSzrfaz/mj0QKVWG7OJN0rpalkuEXNmFI4+Sj1YOp3SQQ2
	 YuqHy6m/+z4NR3yRohuXLX2YsevGA8wmmjLEdVa+LqgQuuZmTCtiaVRrniM5HDHlEN
	 EYzY0j5iqburO3LSHfa8fq1SUS+NXVsQScQxYIWbq9LQGDvc/bFwhyn9i+bMt0jNOU
	 GkYUol7MudbkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E31C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686939360.31514.13184615522328499492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e2d76e839d31ee03d0a6cf1b72ae8bba3cb57df4cfa5bfea2afd81227b1228
Date: Sat, 10 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746869393
