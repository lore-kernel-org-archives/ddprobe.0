Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD86145A18
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737447354; cv=none; b=t6fNrl8tFgUJBzjyV6Icvlx6SLyoyQO9R64WdLUP3rsVJE8fY/KxVfN23Oe+DU5zz6goHz6wfvKs2S/SKxzwFc/UfCFqSyqEQUYVG70VvQUhtVESJDnYz0aNxw1LolTKvAWvdM/oJWJ2V4GE1A81Ed/vSVq8Z2Qm5068E5EyFRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737447354; c=relaxed/simple;
	bh=/aiiH11+B3+DDuIxO3XqLU/fgWqTEY9CN0hYSZGyHL8=;
	h=To:Subject:From:Message-Id:Date; b=QLJ/9+Xy6hieNt7i989l9X9/IjcxIE82idy9Xe63FaAm3a4zhnRsQEgM0XLWkrGLR0Fjg/li0OmU5t1A96ZsaFdptbL9ojXKUhfGP2ThTxgIyQ9MshwivoZT4x+XntJJZlEVuOBXmUxabaMa1kvS8m06lT3qTtTKAh6U8EdkMsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5KCGLIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5KCGLIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A910DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737447353;
	bh=/aiiH11+B3+DDuIxO3XqLU/fgWqTEY9CN0hYSZGyHL8=;
	h=To:Subject:From:Date:From;
	b=B5KCGLIi3ftMP9dZAKR3B7iioKPuTVZ284tj/PtHet4DypBh66ZWtYVsPEfk3Gmsi
	 SBn7cg212+gis3mIGzJfAEnXUVFUJWyAfYgZSNIqQF/HeHsZvsXbCpAJZuW2zxzpRv
	 BM0xVwjW2AE2dFMiM93Qx6jyNdKRpmikWeHFjIRJPdn9U1/JYViiZ6jOJoR9kPOlo3
	 qUaJWtPvWZ5TfMMA0gN9zsCRU6mnqkozh+W5o2ClOeMNHyMEtz/j6B4vbn14w/8aRL
	 nN46TmVKbJiRR9rhDIp/v/kpojYxrZqxIuovAod+vaHvJeDbLP0Ld/NkK2+40XtJ9u
	 b3S2YSqEz5nnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95856C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173744735360.7756.1801148566329226912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ff0a44ac3c07b9b1b2da0a2d24be766cd3fd8edf4f10dff47e1a908fd33853
Date: Tue, 21 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737447353
