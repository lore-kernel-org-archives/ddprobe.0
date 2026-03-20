Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089B211A14
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773968694; cv=none; b=jUeiClgZpTZzBIeXxAUcLIWmRLR36+blk5lu0O17+ZogxwYPzu+glv/NGKPa+xfZ/MYB+ZNkEjjzOQ2vFJ9SLNsD805poeJBb+hZudpfv1CTZzGmYYAqt2EwnBwMFUHuIgI7zlYd003P3hkIBPmEW586pUkct7Ec6B6W7NPAZNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773968694; c=relaxed/simple;
	bh=PkOH9Lkw/SsZH6bLjp1HfC9hJ3gAs7MhNqfG4slcAD4=;
	h=To:Subject:From:Message-Id:Date; b=qpKgPq9WsVx62X9MuN1fxiTKNyAl23MZCREj7TJDvAh5hEb9I64k/3DSZxbQGwNXP7kMclomlCROAi2Tg2YrVuMN+UdOr0ovvxSp4cY/3sDYONYJyvBreXKK1t3GddpZfhKzD4w9I5jyFzHLXw90Xv4d5BBb/umb/8gyCyCNnQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE3aed5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE3aed5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2F7C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773968693;
	bh=PkOH9Lkw/SsZH6bLjp1HfC9hJ3gAs7MhNqfG4slcAD4=;
	h=To:Subject:From:Date:From;
	b=LE3aed5rG/oAQNTDyyRcHNHaGyHMpUOd05V7aV9rY7uGfsh825iWp8UdkOWEmpex4
	 3hGIG1DzjE2PPJXGmDUsGbZrlVTdQSbVLnFAkghc6EjimWrvVfb6tAkuuA61dmChhY
	 69ihYgPfDvZrC4tQIUhNLvAbcHiBDrB/m7fuK2QalFh1lmKT9Jwc2RnbgTm2bLzBxE
	 S7V8OJcyS6aiMJz9158seZDD3ap/NZz38ZI+1hPhJCIqZABXAxaLK0YDFHtwLnJQ6O
	 NZwO3UUxYDJadsY5SsC2cXijJqRVKzsgnetksQT/MgAghlsZyWWDICJfc03UCVR8/X
	 qZQAZMkqMwDRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903D91093163
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396869358.9427.16025088057972470338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a132cb6ee78ead75ea74c5b4ce710a2825721296b191d8060d432bba28856c78
Date: Fri, 20 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773968693
