Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C283376
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742024934; cv=none; b=bl3C2leo2c2UqGfHLOB8mwVnN7ro2QnV/Qu4SIzp2dERa40RDPJBKLecmSwllfhMY+iM+EjDHvZLzTcL83SumMol76R0O/MnvzihLvXh0EWtVREzEi7X7jjF7xdJXuX59SWXZASZ8InSOgfrFO0t9sjUL5oJngI6CTd8L42hGsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742024934; c=relaxed/simple;
	bh=1A3Rk4Cd5+nssLKHre+TLiwo3+7V8HcWFtrkhW1ca58=;
	h=To:Subject:From:Message-Id:Date; b=C9lttPZMrbX6F/V1UaHKoTZ78mZMoQwIfPs4K9MVTGrBisIMH9TBHyQfEjn9jcYFcnDqjQDLLFMciJA4faZ9HmVBWe9fXF+Agto4iW6YY+KDGyCiJi/KlodEbQtfVf/Zk2zQf06+zLKvYSkSFzA9ZlfmAhIwd8Knw2DxeMWafS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwmUKVr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwmUKVr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D478DC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742024933;
	bh=1A3Rk4Cd5+nssLKHre+TLiwo3+7V8HcWFtrkhW1ca58=;
	h=To:Subject:From:Date:From;
	b=MwmUKVr6plHORre77Uk/frYbSxNHCbTY2Y54aCN1Ijb2m2d0TCyhitmuQVbsL4ODb
	 Q0o4/CzUMrmtZCSGUAqX5JcHxdttMthhrFN9BgSyh8IQSeRAYpevR5KvPih9Q7F3qf
	 /3AkQeLO3IKTK+t9+ukFsFFyChX6Nya7uBbVcVg3A/4x4brcvW+CoZsOp/EQ8qGXsf
	 So7FuPhLss5hfZ7rqjAenn5i4sGcM3PGvrr/nf4gCVQdoCAwqFWfytVwSwj1q56Er/
	 UFOgGlFodY+XQYkE/Mfb5+uUooxxqsmpR8sXVvS2fDFE+SeVyiJjmCXoF9IwoYKN56
	 yiQJ677mLC6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B780AC35FF3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202493373.11651.12474126773799483298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a2c6503d12bd06a93d565e004f762492e7ab1863bfb881ae5ec05d7ca1d2d01
Date: Sat, 15 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742024933
