Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2745324E4C4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773968094; cv=none; b=OsxelBQ/ylXunmUH3i+8qGbLKVPvoqrLwRY6C+QzurmR1jHuVOWYbWP3lnE4RQb79Xa6goHgSZkZTCxawms7nlV1UgFK8yAXqPor/DZMXDDrgjY0OVmgcgghRy2ovK0nZlo/+Evykgy36KMXDbPmInrjYYDORaoBR/5/Vz9l6aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773968094; c=relaxed/simple;
	bh=IV3NVwlAtdAxv+jS97NUaX7jkAyPrq6gYeBnUYrKKn0=;
	h=To:Subject:From:Message-Id:Date; b=HHbuJhF/gOd4Uwd1MILlAcLUB9oYvmWQVx0XPup3I4YmIe6h/QO0CR/AdrEGJ57IWfDnfwIVeYgQzvCibzm4Moh0t/y9s6fXkRn+vnPo9ZVaMPnOFNhVD5eIFDVgN4nHoHcl8cOE8PaJPJAd4UJ3K0TGAK31nEfAgCGPhwNzwkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkcMmaGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkcMmaGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067DC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773968093;
	bh=IV3NVwlAtdAxv+jS97NUaX7jkAyPrq6gYeBnUYrKKn0=;
	h=To:Subject:From:Date:From;
	b=OkcMmaGWByLtBIZyeTPz9AnDH9nzMEoDjIaEjKsIcYRTaOUImG9aIP6T0yy3LSyWO
	 gIskLZoi4PqVxMuDE0SGxFn2Rl1QhVhKNKKUL3WshlLtktE5Os5uIUBTvHI8PaZF7v
	 cvMeMdLbN5UhxlADDSlz3vZSo51GQVH7TnVRria1vx++RyYDnz31qB5ryLHK3ovIw+
	 aiiZ8z3zisf+Knsb46FrrIPiSIDy5osWPhc//q5EE9yyOi9Q/w5U2tNlQMbZsUptAf
	 FqmfN2f4ZYk05z92RESswT7HI/TcQ1Zk+sMZ4VcAmNJXFn4JvyoYazvte99ECMI13Q
	 GveKXYUSuMkGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F71093163
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396809357.14848.15360076621399287027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369bbdce59e83b480c7a73fb3440e3e46d6152e40bf0d0bdebb4b2836e82dfc3
Date: Fri, 20 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773968093
