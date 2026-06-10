Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47296380FF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781073934; cv=none; b=LGG3MseNpN+ilTKcH5kSLeNWUj+Hst3iXu7nLquB7Cdiyn0Mshbf8UoyijHaEnFeAEC0Kf2Wz+BQQRW8aoWqQEkLjBorOV+YFEY3AQGQOtqz0WMY6mijAB4F3ZoeR+1hfYzRdIC1C2HnAQvPtH1N6ajJk7Jg4hOmXZDJR2JClS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781073934; c=relaxed/simple;
	bh=tT+Toos5CBL9Fo8dekxWtOLfeFbpRpfzTVSqNs1IAtM=;
	h=To:Subject:From:Message-Id:Date; b=LO6OO74VonqbpwaKhE/JrQdy+oYwylQmtCQrGOyCcwl/eTxPWqVJHXZ2zhBWDrtHoNGMRYjDk+wGHLdxlfwkeJB6eSNKnojxXTm9JXoVLcLUVSb+aZWWSMywPb+ifhkHSP/a5kj4eq02gl+nSkTEKmP9vfDtI2UUWabv+/mTaxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2IlF4LI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2IlF4LI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24C9C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781073933;
	bh=tT+Toos5CBL9Fo8dekxWtOLfeFbpRpfzTVSqNs1IAtM=;
	h=To:Subject:From:Date:From;
	b=E2IlF4LI2lzjdm1wuSY9oX1HJvVv2r8nD7766X2ZxXcFZik16cknsVsbGYAMUd3PP
	 BnNy/ZMziX3a3GDq/BcVF/0CVCnvRgYRwBfH1K5nOY1EFC163e+YA0n7mkcvQKllqb
	 oXe4MQ32W94czfRpasvPIo02Nnyzo31vC7ftyuOeH/3u8wtutDo9iMnDUxsRPHPsXC
	 7M519uRyw4agNf/iS+7TKJ8qtHcK9cxBdz+W+uEHbZSDhW4B02COZVoq1OaFlV5RR/
	 6xRbjJfBRm9nN4pV5JL9JCu/Ehm5K6OnD4r1VBFISBNqTl0xEjfHPEO6Ao5c6DQaKy
	 XdRPjSbnweNAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8323CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107393367.10446.847419223354188839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ce8d3179da03f5c5bc883636125547556535b970d1cb519207f79476325c42
Date: Wed, 10 Jun 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781073933
