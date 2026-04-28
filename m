Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9583B27C7
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777377454; cv=none; b=qxnljxsT+mN/UXpfucXZOkQYi2K34LkYGbMwnmhDKEGvodWLaUqOWLttHDmYec6hxhFzHF3PbNbINI13RyKqkBoIKdunTYvW2go4GD15jO+oKFXhfwEFBzLjo/RV05rdl+elQmu6mhx9OS6K9v4bqY/lkPk+sYczjeyVjmbsBes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777377454; c=relaxed/simple;
	bh=tPVu0iN+KdGl22kd7vMGo5FJIeykB4V15g9lKOQtd20=;
	h=To:Subject:From:Message-Id:Date; b=CpGTIRwawtbuS/Pxv9/DAqRL4qrG+Pe8GoQKe6MKcQnJ7dQQNak9Vp0Htygtxg2nXm5jvowJ6cHZzD78EjEqA+bNlbPP0AAdWJ0e73dt2kZcrDl+Nnaaq0bSMDolpCrV0fgduAGgx8lZq+4j81rF5LV9YTWCfwevKmK4wRdQDVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlAjM3mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlAjM3mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79C3C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777377453;
	bh=tPVu0iN+KdGl22kd7vMGo5FJIeykB4V15g9lKOQtd20=;
	h=To:Subject:From:Date:From;
	b=HlAjM3mQy9I9iWLgFP4bJccna31+Q/9TYkT2c81NLQcSGZOmiba6lrEiZ62pA1Rs0
	 3rwuuBJhdGtJYcvYC0ynolBRvPr8H8v4+rlFPE3ewUTFvkCAWO8N58GX0JJTO1DXNF
	 2IPCpg0VA2ieO7iFHFEfLgNybkChWeeH6h9Q8FwNGTjxfc2d8FlYhQ4nu9MU83qXry
	 V3MUZBR6f+1ACaZ1Kt718qmi6H4FZo0gGZzpygUwTx8y8a0z3D8OW0XwO47Kih75e+
	 XYd2CTqhuEizvzdVwQ7wrPblJ7me7ZtoG8i1uB5IDb1o32hC9VOy75dQLGoGXXZxjd
	 tGikwfu1QQLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F56FF8868
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177737745368.28083.2649720798766806323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7f6dacd22f82d06e5838fc5e948ae4d43f09ba36e5cf1d40af39a28fe14f54
Date: Tue, 28 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777377453
