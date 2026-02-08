Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46925215F5C
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770534834; cv=none; b=PdJONawLMrJFUqxGZ018KyevHAlCbGTytjZBcZmLESlSzxbfxmCsMKTjEnDUUhs/jr2uMcx+tTSQWX04w0SIJlA2f7UJYhj0PvtJLKPcc1dq5OZPp6R0dr6OfhS7It7J8L84H8yLH4KQSd4Eu9mFJX2/A0nhwym+3rWF7zfqJHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770534834; c=relaxed/simple;
	bh=0cXcGEmMt/I/VbAz+0156/i8yIp2CPWPwv1xgHu6zgU=;
	h=To:Subject:From:Message-Id:Date; b=mvPGKIg0CNNUv9nQZX0tihFTpOxv7Df7VbA4Bt7C91NVMvzmUYtBLWAmfsdA0GePRjdpsgFWcMMoM+RmCOJnz3+58VJXxggBiyfDtwbK3YbIagVh/qxPgy36BV5Os00PbLVzfvpEHFbOBwmpUfDYt1iMnKVV6+V3iCRnEYSXyfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3oZX4Ni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3oZX4Ni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770534833;
	bh=0cXcGEmMt/I/VbAz+0156/i8yIp2CPWPwv1xgHu6zgU=;
	h=To:Subject:From:Date:From;
	b=n3oZX4NiKzwaifodQ4seobrgg9nc30Nqvy5EPSxZrdcazrD8qRvrnJen1eXoVzfYF
	 XNOBTW33rCADIaZVxsIjhnL8Epmcueb1Z9zi8huc7Puu7RRwIAaPoG2/jUs/mwRcQu
	 autTmjlb4s8l4eRpto7zuFmFUEubfZo6JVyYihBSZXpkKJz3Y0X1dJyVybrnx5zJgz
	 QCrnJkp7q+eXYQdnlWru6mC3AXEMvhgUBIoBNqjc5N1D8N+C9neAyfpOE+4+8SAPh3
	 4bKTcbo7GwwU9CHSgsdCN15NBoEN4CSb5D1DJjsISGtq2rlu/mM2IzQ3ojWGEuREe5
	 HHLVK/ag1TV0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74ACEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177053483362.8915.8630775554805280727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1261b4025be82c19c768c79a09b7c13f88935fe25b87d54a524168be7d023463
Date: Sun, 08 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770534833
