Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B70132D0EE
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792021834; cv=none; b=ow9uFmtiLczUdcpgo4suNDwpfYk5GzhinnmQGCpdmq56t6BW7mYctNhTa9SjlCW16cgpL7KuMlTCF8DFCXKrt7eQ6yl5hsXfP405TNyoGSFQfLxv/akR2Pmib/edyWKRkYM3oLHzyXPcFm4qwW0Kq/Cp6Bjo7a8Toxfurm6FAR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792021834; c=relaxed/simple;
	bh=e8FKl6RN2f347hdSEHhFEHgk3WVT/0oMitMuMzqHeiI=;
	h=To:Subject:From:Message-Id:Date; b=e0e+O2N7/DwHUhjT/QC+ZE1z73elDX4FN+tVsLZrFg1FJ4rv8TBKQMrd+p2GqrTG1nShYKN1lr96TJXVaUAcVZWsq8z71Thm1HvP4/kVJV5t1XU8Y1n0Y+Ey+uXhq35ApTHx3NTj0sCEtJcp4gQmTKWO3zbfLEgNO4QvLTE3hCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwDbPF8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwDbPF8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD70C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792021833;
	bh=e8FKl6RN2f347hdSEHhFEHgk3WVT/0oMitMuMzqHeiI=;
	h=To:Subject:From:Date:From;
	b=TwDbPF8jw8S4YXml/aZHrIC2z12t6ziec4caMnYTdxdRWQFlhrE8NrvPNI+YgVHSH
	 D2DE5x4jLv/KI6rbhlk18SMP3Y97d3Txr3SdBwixlAVi1+F/WL9Fv2C/1aK6bSzLwz
	 xunTkcWxKjYaCu53M6M30ajlvAD0OqXNXGPgJb8oTwJoYOPiDT4JrDLbsSnps7ykgB
	 lB8HJUzHIiFbyJzx1GieFEhISBPSiGVbF/lI7d62ldKbQ1uiQPT89GDpGdK1e+OzVL
	 zPcWkjmLr6juDE0uyQv6Pqv6cf1sSopIKu79uUU2rxT5nbnsBAF+YyPxtyilbXOIQY
	 AxrW7382Fj/1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF790CC6B2A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202183369.16571.6869887218385279969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d701744f710751f73847d703837e177caab7b61fc7a3ada6da590b050b9f5975
Date: Wed, 14 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792021833
