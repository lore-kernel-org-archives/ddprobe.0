Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D61E13D292
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711482497; cv=none; b=PScsZMqkjdm5iEZ0X7VaG9Stfv0ronIQ9bW5KxZFkQrPQFrTbePD2GmMan5I9JhONwTlZIVwvraSpDzF0DtWGuM5LQG/tFjnpHIGGg2THw2VenmNidIOZrCLmLN8tDPiFuudtXn6mieRiXemxkrIUG1Y/WmiMNPmBi99WPdYa7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711482497; c=relaxed/simple;
	bh=FZFlzNIGYD4JI8iQu0HHd9qPhRBwK9BJWIcfiWAUjNQ=;
	h=To:Subject:From:Message-Id:Date; b=Vi5l+sjXvvqMsrFcJxEyFMrSEcS7vm+qmGDzIv/cUExo0klLH49I81AUYGWmpimISwRHDQMVx8mOB+8Q574uzteL9UczXDTD7BDWZn0VtrSAis01VtXkTJXgueO5zZxL8ZT61t3mNXALUNOW+zzgXy8Wz7JubVDImmkTeZ6hapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFgUbQ/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFgUbQ/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827F3C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711482496;
	bh=FZFlzNIGYD4JI8iQu0HHd9qPhRBwK9BJWIcfiWAUjNQ=;
	h=To:Subject:From:Date:From;
	b=qFgUbQ/db2UxMvDuRjUbg3P178PCCbQGZZ6L80tmxykW1MMCWX3k0HhgwgpbeslEK
	 5I1Ep6j5r+sfutzeHkDeHd/lB1sPLN9EvoLZiTpIXxJJ0vHM0C22YFgQgHXg4hJmSf
	 0OGYdqHsSfv9rE3LA1XuAOVZorFrADRRy63LfhdB6bt5xPo5iU2CHd5V0WJbOveF0x
	 GfGzCgPh40EA3l8ogvYgdWgWmS9I8Hk9kQcMwjVbRkknf8bp4HY/JiqdFq6Egf6bB3
	 8OO8/O/JylNey0wc4I3K13IhmhQgJfmm8fU5yNyvUWZf28F/fScsOQ2om/G357y1fJ
	 NLR4wAMxEDImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E410C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171148249644.2140.15952501472838859329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4689f65cdfcc9d6078e581dec4ed6d72f7bc4da96945262936c66de0d14ccc
Date: Tue, 26 Mar 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711482496
