Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0CC2BD58A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750849794; cv=none; b=k+McLny3+h/0EXu30TITmw7gpWNtbn1lNOAQX0JeL+He7uC8Ixogw+x+7AXE9qFkXMoUeU5jEZlzEklSx903pnGwqv3gR3YxcCOX1s6pWanTWPx6ABd+UD7BUlGYivCtEShk2fQug8ySTZQ4NIMu0SFCGzUEnfDPjX3/FSzDYV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750849794; c=relaxed/simple;
	bh=IU2qkzoFg01CWbjJ1+bffO4EMpm5+K9WEHMzX48WW/8=;
	h=To:Subject:From:Message-Id:Date; b=WREHgcyVwinM645L+nbxVf+aYJAr8zgZQXtbGA5yt8IIntcoKzgM2EPlI5fxLujX92+DiJxLyYCnaAzJHj7tdjxMQ/7eJTbIcAGvDUmSXXedV+9IpKNvSAw9pA8HBOXmDH/cl796H9pGQ+vsNJCg8JOQd+e0wHGwVh6tzUbtAnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kX3X/x9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kX3X/x9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5BCC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750849793;
	bh=IU2qkzoFg01CWbjJ1+bffO4EMpm5+K9WEHMzX48WW/8=;
	h=To:Subject:From:Date:From;
	b=kX3X/x9nSvMFRpYkZ+Q32OmtDJOgB/uGAwjoDUsI2wLViyoqsAhxfGjRG6sGYwBMK
	 pDJfS3SiepPacBeEz4JBFRyAaKj89ydpK/PJ7DtL8FVLv+C/a1sW9VLtrGzuyjg94F
	 ClEglZmaudExhyR5AuYTT+bajWIA2p+X8njm/3YiTVgEM2rBJfb5TlZZH1omRkAhVD
	 SPFqHg7nyTNl/1qk6edYNT9bnhjkOBcBWzSYOa3DQDlLn62xovi4WjFSOj6XUMhazu
	 vuIVFzHX/0ec3BEbYt+bGq01CihCLKAvZejArNpPyvLeVwI62Hg/WGMpBz3jOVsADZ
	 WWD9DTQpxhT9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F466C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084979357.22210.12502248472771249416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168e948f989e2e263c48130248c96fd2c418224768d4e7febe294ee950a72d28
Date: Wed, 25 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750849793
