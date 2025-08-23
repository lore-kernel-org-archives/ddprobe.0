Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313D935972
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755908394; cv=none; b=caKAjWjIfWKYxHVuJzuEz/oV0leP9l1nkuF52FOGpxqfNp1ib4iNP2A2LvIHXZwxh1ahbKF6oBqhYQNu0KgFeGLy/cPLZUMEBZY1y+9Tm2gpwHMDhvr5w2A5PxWt69UxzwSf61byfD+VG3QkmL4dIaBih/O/xb8V6yIU7BKk/LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755908394; c=relaxed/simple;
	bh=49S7twqtlJA5EgXlGq9AYzpQNXmBZ/mfbr36Lml9bpE=;
	h=To:Subject:From:Message-Id:Date; b=Z1QT0aEccyNu3LZ/EsE+4vL64IqnnDSs/GbzP8EC5NuQC/g7CkdNQHzNL2ATNgiP98CyKDfzH8DzMpl5afq9C/XRavJkWQrDfxm21xNjUIzAQ2J9RzTpa8td+bJgkpOlXD6FP0S+RhxaIrkjx3OjNUIlol8xFCcnG8jOSeMld+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTOR0scM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTOR0scM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4176C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755908393;
	bh=49S7twqtlJA5EgXlGq9AYzpQNXmBZ/mfbr36Lml9bpE=;
	h=To:Subject:From:Date:From;
	b=bTOR0scMl0Bsm6Kqeu5hXLUArq99KLFfuqZTyYx+qd97JEXMxvhFR9dA4jrGqdGfV
	 jYPxKo9miPRJMZ4752Tuy13udTJA2wPYekorBoz+K87Pc3wFbOi1miJB+waigOXGqr
	 q4sLJQ0M0jGV/+tf6NxJkwCdaL3ht75bMojmiitnsfbRhzB9RDhCylmZYAr4bWgGLe
	 rifsCeDhJGUlkh2zaoXiiVqAcqxR4ce6Q840ITtuVHs+UDeFQCcELBIp3+g0AmWSAK
	 4THpBxb/itObHBSJ7v7wz4ge92JxRUMSedYZ1A8q1TO6jCpPzDo9/Wu83xep6/oN66
	 i/1iWmTakb2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFDCA0EEB
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175590839357.13313.5586612445012246782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00d60629bd8fb2ef3ab306f4ea2912b676297bb73c1a76d8b7f68b8831464caa
Date: Sat, 23 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755908393
