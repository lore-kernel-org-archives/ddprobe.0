Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB441BD9C9
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771991694; cv=none; b=hcHEKz8bjNzByD6MvGQ3FdPKdzDodn3dmqIyAO+DeCJ6lOXlv/nUX+qpCHfM1ag1ecq+ZhjEC4yLAq2u8BRiYpTX1ob8xvRhf69tvOF2Kr2zlsddAKGenOfXFLKpo49WzQGVG9bMDvuWE6u/VJQ5qRF2ntp9S3xiXKSKbSh/7N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771991694; c=relaxed/simple;
	bh=jDhqw+oOdmSYkIcjc8tNUzh2D6wbEphpImxSO9v/ykk=;
	h=To:Subject:From:Message-Id:Date; b=QvPf11njAwmHB59XorEVIkBnGrTKDEUypNrox0g1esvYiLKdgbpifCzTEAl8WZb8ZPaIcfj2z7wi+0m1rb1vi0A53R8nSGLUJpVjCq47+mA51iUUAkcR7D6GyOOYAkitRdSSOcLWhMxgtxim2Yj0kTj2KG/cT/OKIFe+itNuQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CItvpocc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CItvpocc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F597C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771991693;
	bh=jDhqw+oOdmSYkIcjc8tNUzh2D6wbEphpImxSO9v/ykk=;
	h=To:Subject:From:Date:From;
	b=CItvpocc+E3BQPHxLyY6C8MIDQ+inplv667Yu3PFvWus5y88cq73vJpfPaFXgHozt
	 KMw8JT1r2UQIwU7rfbBqh8sU0pwVnwFMwUvZuWYBuZ9NZYYAU4LwE0RmRjvP3aVmWL
	 lqkrmfgjG137PhXptcjjrRK5sk8Ha5iAYIutl9XhEEyMPw1LR6kALQSftlGNJ8Y/5B
	 SN5a+N+74NEDtfEecKQep4q6n8RW7YumruvfajCa7YTl4zjlOPeZKWNR/C9X4Ok7Ia
	 F5B2AIiPX7+g2lqvqRIKaG50UcshgIEPoPb5o+M3dqak2w98IG+gdzhBrqTMJPgq6L
	 6zXWGQD2LFVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902D4F55449
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177199169358.23592.5416125069560749527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99be6a9b6bbf03f91e4a1040aa5d0b44d7ba8840bb75180dc8e0e3f28d5f1a4
Date: Wed, 25 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771991693
