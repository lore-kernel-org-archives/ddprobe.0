Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD60233945
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779556954; cv=none; b=Emu/k5XKv+LKmxko/L2h1WKA/w/bg16s8q0MQKVSZ3BIGyshRZFlt7ZnlN9Q0mX/Vpo3ik1qSlYqCCZWA78gffVpJ8roINO/P/396VoaKJIl0sU2M6zUye4WnNUkWtR0Jt1DOANIGlkck4B8fkYRqSoFxxxKtLqzjnWsdaAKvnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779556954; c=relaxed/simple;
	bh=C3blapVrRpNJhbJcb0ia4r67BYHdAwoziYcGy01P2H4=;
	h=To:Subject:From:Message-Id:Date; b=Reo4fuhEf8vRsapKJ1eesbpzCT/1MN1wJTfO/R3xPPSPQSPFvdyFvtSqxUoqLezYgTHetGiyZHvLYjIBVYc4/g3WxamMloPZk7KVlJUgq70Bu5wbVWMQR61W6YAOeMtmwUGv0oWOiUfiocIFgJd2HpJxVhV2pooembqmoYO0vQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtEcUcSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtEcUcSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5771C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779556953;
	bh=C3blapVrRpNJhbJcb0ia4r67BYHdAwoziYcGy01P2H4=;
	h=To:Subject:From:Date:From;
	b=LtEcUcSaGOeAVLKWSSz9Kh+YxBSf9iY0O8bIu0++a+g6WoQbJ5NS4b/9O8QtG5tto
	 HkJl2XwUXXGZ8Z/nPqRNWjhWvcM9WhYkwyc3/ElaQE9I5EWjTGfJsYNRokGMBWf1UQ
	 LYSduKzH90WXKIhYzuIxL4CuzXmMOERqhTB5aPZggcLIKmTyaRg164+3ghmDt4qxML
	 f/lvTzRPlZmKoO37tnGZ0x1aR+plU0TKCyRpxuKj5vaLedlcicxwpxYJDBvuKFIoPn
	 rQoM8QNu5JGFLZnCJY+4dVK3uLCWsBoqZpN78J78Gil1CAd1EymEktV5sk1Y2t2c+Y
	 KRWilRftLdMig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE1ACD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955695368.11437.7293016026579044371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d0af718ceeb77c085324ee712a63b005161f50b569f64c76c0d6bf3f22c8d3
Date: Sat, 23 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779556953
