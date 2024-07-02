Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516C8155A57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719961523; cv=none; b=l1CX4+on0dxJ3Zrn6jxmoLY1BW5mEfhIc8vctmfKJYSZ0jbdE0ppdsIXljiTQgQjiNA6yGJ3QwCrlV44yFkxkaKkh3qSm8R2k0XMEZ+tZXZQ9Ok61f0zoQmB7gqBWzi/+eMe5J+8HgF8/5wIHwGl3YaUIMkbg6FEKwUOLC/ltM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719961523; c=relaxed/simple;
	bh=IZrvC7yKUhVPM4s+y293F2Md1YNIE8Lkx5UvMPgqZ+g=;
	h=To:Subject:From:Message-Id:Date; b=MaZlXJWPwKGhI5kRQPSdF5NrXGbckLhjaq7uU3w0CXOoOwWr4x9bF6uLJu+sTtQIUi5/2Tofao0raAwoTFWz7u8xo1bMNkrsa05N6Nl5eNlgzwnrxMjGAznDeb72lcJff2V40Z0k5Vk+JJGrKNWno+mVvhF1pSw3vRJtpS1bLXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW20nIsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW20nIsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1466C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719961522;
	bh=IZrvC7yKUhVPM4s+y293F2Md1YNIE8Lkx5UvMPgqZ+g=;
	h=To:Subject:From:Date:From;
	b=PW20nIsp5kQHA+R1CxMUMhQbRlKnSsducAtJniCV3W/iBVilymvAY8QIxBSSnjOfl
	 462aVLIzCu4atnaFxWevK/vH06dRVVYkdLDi47HSsFPBtKynczzvqxkH48zlXC1Q9T
	 o1zXDmy28CSrh/Y4zQ4qCVROF3oCZXeJXu7rPKpxEJ2FLftkQ2EMByCm2YKi8nQ5gh
	 Si2L5fPN2M7HQvY6T7jtvmeMzjebX+0Ld9G5QxZBT019aAAgz2E6Xdaiqj9EdDS2y1
	 ArXBOy2FChRBvAetXT5ISRGKhVj9KFZDoLuHG4dRvoj41qJsjEL43WWDrLX6rvvV7m
	 amIJa0xWQydEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF574C3065C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996152277.18864.7905525653684444095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14e7dd279ae178eafeed486e3c7b0311546765700f3a450253ad52369acbc9d0
Date: Tue, 02 Jul 2024 23:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719961522
