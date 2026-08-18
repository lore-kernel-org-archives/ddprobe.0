Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408643AD507
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787022034; cv=none; b=dfVMkvN3x1tXB2zzibGqHrm8ENAyYRr9C5hkVhaz6RHU6FiSXa3CWS0/CX3RpNwC31zYkf+mk6DfOcumTlXuMBaMm/Q9+xw0DhO/XDW1b8ncbB/lKmEUzt5ifRjEK7cwyH0V/HPde++rdwDAb9148vGnJ9xqhPY8z4vZsOMlrKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787022034; c=relaxed/simple;
	bh=gk+MgqK8FGlTePaqUR/gXBvyje0WgXaqDN5AkP1qjDU=;
	h=To:Subject:From:Message-Id:Date; b=egc0dyou1J8kw+xgKZZnRKq3ws0q9c8OoM2YLFxEMmvW4CnBIBTOCA2VAOI/sHLXJ5OGdWt4xigVnEe7EH4Z/cRDWVk5y719jZrDgkm30UMOEg2M3I+WMYdJ+2UWtR1b4b8jbpR+JZqrmjaL9E5hzvTSJC1NL0lbu6ORfXfbsao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYzxHhmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYzxHhmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF52CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787022033;
	bh=gk+MgqK8FGlTePaqUR/gXBvyje0WgXaqDN5AkP1qjDU=;
	h=To:Subject:From:Date:From;
	b=oYzxHhmkNV8XiX006Z14y5xxquAY+BjrbLANGzo+i8b5DeFAu2t2gDbtCtqn49sFh
	 E+zyoust4mK1x0gaPhMnBBooTJoOEABTOt4KsGiLpxojSkQ0AjFOaMMP76qxnYjo3X
	 6qOLQGEkIrLm9QEblmsACoKgaREhR0Mq3FqTN6l4NJAbuvW3lSxm5aXJWCIq1SdITu
	 M1I8/rtNrukk6CFUsJ7zigMpvDxxCubXsx0gVCNB8uUu3fk2tX6/9RwIApYPFa3rT0
	 Vx2bVhMOxt4AiS+cBzSf9xKMzyNlcndk6HXj7JKA0dWrMT3DU+/+RZ6pAZRGIo00YA
	 kwK/LY74No+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB30AC5B572
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702203369.18204.15904034084188540028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54a1956ab8e9cb207bf72844ef25ff0946b557f4f140a16f0ecdae6193becef
Date: Tue, 18 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787022033
