Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503FA38DE9
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714168943; cv=none; b=hLmlpamW26kwsqlBOz+Aj3wZTy+IS4eXUjQAemGJIcYjU8JlnSNdld2U9FSzgf9nAz5YeatsPbnXpkOu2AXXLAz9LjHN/ZGBmz2PT23OW1OimnbHwD7vSFD3aGZ1aEklICl95i0wWo6yWuIDmvasZUYkhp8CVSWqXxreeC9E5UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714168943; c=relaxed/simple;
	bh=2mB6LYi9cXYUGLEppqtIQA40ZPR5T2IiJKchtpynf/8=;
	h=To:Subject:From:Message-Id:Date; b=Qe3LZLVhooOVxu9bbV1cNH9L2EHF03E2Hwm8/2c/Mvq99fR/iFdaEoNZDf0+gI1PRqalNszeCk53hlsdxG7ymlwTUqyhQiBTIx07dZkzjVhTzSxZWB6NU+yHCPoystsrGJof5otWEg8EEsjhKCu7rfFCq3iW3NI2+cRD4QQBxXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4pdQmv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4pdQmv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7612C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714168942;
	bh=2mB6LYi9cXYUGLEppqtIQA40ZPR5T2IiJKchtpynf/8=;
	h=To:Subject:From:Date:From;
	b=T4pdQmv2s9vP92Qx2fPfFYHGDeq7zue0zAP6SQbj6MzMT5Re98AhfoYISMebcEKsJ
	 bSjLR9r5Dgv8QVv+31pv3iczJ8eE0FuNVhX3REkrXnECc9UKPLqjyFwvDm1/cUpiua
	 IeNVjVDvJSOKBjzCYSMJiyPFT7mmOOy34hHaJFXeQPllOBQkAuJ+TLYDnBocJHdiu6
	 +hFJ0n3G/Yp2fVrWwRDhJoRNmVW1uy87PmZzEyXUuNvgxqZEQoMuNn08iBrmSfc/v6
	 /UdO8aRkkgJQLpYbKbX3QhwCuju0ei01kB/YClPzeRmz7mTOVYxrba8neYeS0s/f3T
	 Tn1gdvn5bRomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C07C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416894277.13513.11909805299228145864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86815214415abf4dfe470724c7d2902001207fcb79295fb7dda3840c028bd2a6
Date: Fri, 26 Apr 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714168942
