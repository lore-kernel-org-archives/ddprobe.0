Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502D81EE7DD
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745362794; cv=none; b=a5tnhEMiKvEKUf1JHj2qVqpzk6gfE1aZYA0Lk9hQ7mv4GBeKqtA+J0u1QAYd7GDeBM0Nj8YXPlS7fVSfBzBt+iWCGQAkH9vjkEzokwHWK5SR6pADyuDHcr9uu1STL91BAFFDP8sSo3siNvHbxzVARGHZUd7bBERqepfLaf7laR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745362794; c=relaxed/simple;
	bh=UYHKiT0nMWuBLgXXb9AAO6udkETSRXn6bYVtB1KnCmM=;
	h=To:Subject:From:Message-Id:Date; b=QnpoPxZSkMP7SNVh+9cyuDtRaY1pjZ8oa9T/muTS8PLnt8k3W4KIc+LjOqOSZpNs/+7VXxGMfJ1L27GZ22wKvfTSo8xui0nrdWm+mhPGb97l/B1K8YmN27s07XrNUybixVj7h09v2qDjCBW3DslzH04BA+E/kFT1ieEQPYGgHmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmAOKuLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmAOKuLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE9DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745362793;
	bh=UYHKiT0nMWuBLgXXb9AAO6udkETSRXn6bYVtB1KnCmM=;
	h=To:Subject:From:Date:From;
	b=RmAOKuLvPsAmHIv4RTfGeeaTolf0fy4fgJkyy4V1SfgXld6qrFUpZwKg8XiO7VXzo
	 rB8UAVhBOZ2ZcdP51026Foif5IaQsINhOFta6irMXnJguhEWx/5OOEowyFDnqPpnc0
	 H/sF88sW+CMSH4Sf0kPQcvKCbXkK9NoXRosrEXxdvJODPIiimAVw3vzn6/oQUWTWy9
	 x0KhEqEJRQmpzKLyMblh+HlYP6Q8NOxf+SmZ/ywj4WGvO2aQkYgJtfoaEWpFheESuw
	 7BmUjMSoZYvSfUnYTWd3y6LochTRonjO2OllzWYvYEYZjzbezZIRtcIwnga7OJ67RZ
	 JCTu/jpVxdaSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9985CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536279360.17315.11853159198905392398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ee22023b6d178196569d18451c51b55df783e2a0970d6e6a8fff21dd4c554d
Date: Tue, 22 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745362793
