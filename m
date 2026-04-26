Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA28726AC3
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777226254; cv=none; b=q4DQB+mfbcpGk/QMSqde7jcLdw+l/9hDTyeEb72+ZF+DXuVGqnlxuPsFUc/BTMjYo7Q1NMiuhFSwZ7KvgOVXlGDbozTULi81yg2Rq82WVMWG1j/nJfORv62D8S/abzPx4ms51XhAAZLSJniw+l9wE1Px/8OLGZQRuZ1Xl6ncmiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777226254; c=relaxed/simple;
	bh=lqxIvR1kukquI/j5wsANskLilW7fxb1XCRWfoVvhldg=;
	h=To:Subject:From:Message-Id:Date; b=AT+ollcm3LqIdzDM4MB9nL4f1S+b1aLyQkWKDsp8/3VbpOUTJNPDD9SL2VbbFpd2KtblcDkUPY4zlkEMM7aR/3TXgStEPPIWp5w0BIvsm1lZMH0mn3GyWuV16Y8ns2mTpIJh45AjgnmOVZsEOBROfEXHH7IF0D/qIZwb0EEf7eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2iWL+6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2iWL+6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB583C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777226253;
	bh=lqxIvR1kukquI/j5wsANskLilW7fxb1XCRWfoVvhldg=;
	h=To:Subject:From:Date:From;
	b=m2iWL+6PP7qBZIAS6e1Oyw6KnUkLsmmzE/iHPO+dwQ1gmwQIoaNkmf6YYCcHmoyZ0
	 4uGXwG6O/lq4t39Ty3jJExSSzWHlHTHL1zFoTnhf0Q1TOkyeryWcPN060XcC8GJvH6
	 mFqXuL9RRqI0A0FJ3QQmhZ4XvEFsNqIbl9JIQJ9Swq+R2oPesTG0JZNX7M9hprB9vw
	 PdvdsC0+UFv5kXTuaqrIHw2BVutO7OBmtxzoozKlYPDQnSXYKJBuazCWAex38RQMxB
	 5ZqD6/0/PF1SMe+9GHG8xudSMXOEMOeDetyRV69peNY31PV6f7BzR6CfQ3x0rdLxVt
	 fSDlH9BYu6nqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAD9FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722625368.12669.2028154565543506756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3135d1e871e3088d1d0a69e3c7c20be20ad6a4afe9d3609127bcc80e428a4f23
Date: Sun, 26 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777226253
