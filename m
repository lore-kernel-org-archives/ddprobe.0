Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E910145A0B
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739694534; cv=none; b=EXYFW+CDKER2eyVOp7TqR+Nx/FASw4sXhxT86x2bEjRXCdkcpkVzCGw29Vql61QzVRbmJrBeco6XLhAhkB5EkCAVyyYIAMSDBjkDEd6cCbZFQmSQWcgYDLzOOCPpNDxaS0gsJdFs6C53AWeIx9cNZUUlj9nuSYRucJDRssU9bWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739694534; c=relaxed/simple;
	bh=4wOjQvngrOmQvRv6jfD0yPNp7aBVUeIGAg0FIinT1R8=;
	h=To:Subject:From:Message-Id:Date; b=QPlj/I6zHC12huyxb4LUlkWBvuOZ3yvjzHb749y+EM7JdFDk6sSI3Rq3q1hjgFbsWjZh32TnmRpAbr8zVATcqNLuhmLWz84dyZ9mGRt6S3hReyYkD2F2alYbhrVO63TbBBQJtchochyS5xp8EojifsHeBbHgHpRo7t+jLtlyA4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGgp00nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGgp00nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2111C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739694533;
	bh=4wOjQvngrOmQvRv6jfD0yPNp7aBVUeIGAg0FIinT1R8=;
	h=To:Subject:From:Date:From;
	b=DGgp00nVmW3CaW7OOBDT38W3mBPdkfyegJDAHaM8usnFPY5VmNS7tZxK3+FpBJAvK
	 2TR26as7U3C2XT3vYxdCEIPQJ9utRqstSlX9e74b7mn+JrOyPx7fPaupwtTnTky3w6
	 R05hFEry++Ckfe/vEpRyicBh9gB5yZjwzWB1U3dz0nyyAz9VjsogjmEZuTJbMBjZsN
	 SkybgqTx+0lWNCuJAmUnODNMacVqCahGNJQImRKV6lempTsbkdAso9z89kI4TsxiER
	 Lh9hbS6Uo6Jqe207q+Xr16Or2j/dlh1moZXa8oa3Lu7Ijapr4p/6kIB1P5ppqhZzDg
	 KFz2mQirTf8qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D0C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173969453360.28935.5660204881094047726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf1dd0c2ebdf8626f15fcba7fdee2bb10f4a8731c960a479d5bb1a0b4617e10
Date: Sun, 16 Feb 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739694533
