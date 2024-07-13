Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663E71E868
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720875623; cv=none; b=QBr9b1aEboD+dwOYL3DgHhR5ssIChrUxOfUrap559ov2LgbLM00fJdUwkDMBo+7OAH1mxPiNKz+T+XR776zZX5novIdCE6+JNC4xf418nLwmfmB15kKWR4q/GUDFkjox/zFOcWpgV/vyRR7dT+lyrkFYKctjSkwYi6JqmXVKAIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720875623; c=relaxed/simple;
	bh=1HZ3VHRu/bAZWhSftXjT8hbhxJquPelchf190z/9lNY=;
	h=To:Subject:From:Message-Id:Date; b=JEPBtwmsyc5CcCTWK9AXi+8jnXVmC4+zR/0Flrk58bZwyFxPi34bUzVT0gC1oonRc+MLL2O2SX0cFWHFVnfxbHJ9OYj8ZE7BFcxIQTWLIUMrAImo0ICZB4q7d5YnZBd5Fta1klw+grNuzIUGzrd8L3hOlroHLPUCwZgpQc1ZEyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/BiY64G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/BiY64G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AA6C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720875622;
	bh=1HZ3VHRu/bAZWhSftXjT8hbhxJquPelchf190z/9lNY=;
	h=To:Subject:From:Date:From;
	b=L/BiY64GX8xj6qAyYQgAfcylGcYULPjJjMWVYfVCW3SHb8rppbwhyIPYLSFzZgFDW
	 Y4eUH3iRTQmH8yTPJa8HY2OUNzQ3xvBkmNCGzVLN/d1pWfUOlE/+FT5u+/sMonfIKn
	 +Ob14AZo0RW3MDeo2UvlaAw99lQL91bbmbZJ449Nj0aHZbIx6Nr7fFRyxk/Te28rWm
	 EX2/Pf2rv9l3Y8nJ29TaLBtdUC9tHPKbv9jy2rBcNBKFjVoG69AQlF57qrx+k3rrIw
	 aajHjA9X/1+1YGZaUbk0cE9rmH4KSbcaNxPJbs1OI6vAjpkB/6H/lZiY6IOL4sM12C
	 Yi5M/iG/aV/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CE2C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087562278.29521.16442051366401994878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cb95b66079eb4c71b8df308c0da7c46fb3c2d21b376a1a9af13284332eeda5
Date: Sat, 13 Jul 2024 13:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720875622
