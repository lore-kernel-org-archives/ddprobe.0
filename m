Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE2727707
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775705135; cv=none; b=EaH7B77BkbxgEW4h+0uhpXqoZKfU7JyBY84+iFWNlI5QX1B4uLo0lU6/P1EbYIrIi12QNJoW0qevS3RjuVr7AK6fuEOzYbMn+d4rX2ZP0n2bX03KyEyyNpZO5APgS/4Zs3fHEjoqhvYgfmnrIhseXS5c94CoySfGRPVQhOkNZaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775705135; c=relaxed/simple;
	bh=GfKI1s3u+ruaU9WOuzc/+Tq9l9RKMPm7chy1qZ5ZXFo=;
	h=To:Subject:From:Message-Id:Date; b=Cn/wtTGSoyPHd0+B5eS7PS39TcBsWGC5DysFpFpJFTIqp3AU5lNglECXN4c55IslKBjJNp7SmAdNN9d4EDCN9W7OYj0GmeajMGaxpqRz4KgeUDP7PQOzdfy26JQnWbd7UTJt953vN9+9A1/cKvzb7LrbxSGf7yPZhWVl+HCXhrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjVAkBcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjVAkBcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD02C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775705134;
	bh=GfKI1s3u+ruaU9WOuzc/+Tq9l9RKMPm7chy1qZ5ZXFo=;
	h=To:Subject:From:Date:From;
	b=WjVAkBcVrMv6M4+V10W1uM4wv5ARHdymLmocvkJrWgusFRMgA2sbRK1fCgpHMD6Qc
	 sGEGmiTYsuL74tqLN0sYTLwxaHqmMEFQsRnHZXDsw59xJ+aJklencdBsOAl8alkISr
	 ZFFN7cftkhv/8C518x7v9/rHGOH/5OCJNVEle+mknDX9EBa5OczKa2HhSbWQyFQusg
	 9wsFsiNRjPOMGBOVnAbn8qUYqTFsQAGfb7fGkMGwhpadFKKoznkMwijXnnv5Jkz+IP
	 BP2SKf+PSE+VFuVFV/J9CXi6krVUwtu3v/yQhrY4PkLV8ie2CvDIr2NoN4gih41VtI
	 HncqnVBzsoTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA555E98FA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570513368.4314.15797575458561545197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af0125abe393897cc064d98d2a435ab41168734bf897a6edbcf3a3e29a1650f3
Date: Thu, 09 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775705133
