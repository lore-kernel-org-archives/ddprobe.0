Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377651DF72F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733182554; cv=none; b=sZ9k9qr6eIEA5DP/nxKXHsODG+7lf48srwSrdzPw4zMUz+KPFNwQxPuKIC2spCsOfXDnNiyQtN61sz17jtHZkKBbvyxt6Xk3Dey9T4ZZxAKA/IEL/DkjmtA9vC84rtGy/TyNUEnlbJ3jfbOeWivV/2BF6lTy/IgeunXpUWZhcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733182554; c=relaxed/simple;
	bh=0fqt7Rpeq4M/sL7MY5wuphT5Q8APKr0hR4AbFrB9m3c=;
	h=To:Subject:From:Message-Id:Date; b=CXPl71rzsCYeGwiqrXPVabt9T4kmHlqzh0ZtRTr0PYZMNVQrWISMJNHJ/cPoqmtQnhTxk7vCJz7e1LKqH490oWNh9dZfRXonYQt1+WoBWsf2eKnFoisJBqP03UZy6AuFILvSItshJ5InqK85cyIQ8+geTOnck6NaHfLLb/EV0+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBhzv76s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBhzv76s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DDBC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733182553;
	bh=0fqt7Rpeq4M/sL7MY5wuphT5Q8APKr0hR4AbFrB9m3c=;
	h=To:Subject:From:Date:From;
	b=XBhzv76sIYM5gPdZKzjStOMOPFmZKGk+jNMKbpaz29PITsxC8zFc0G1/jxNDid1QY
	 R3qMpUtWAjsqok4SIQ1yH809JgN/tXRmAO3hvMLlJoKlATwhoPr2d4blxb1jKACr5o
	 UgYpzflOWBrR6U6ShFnqcRXFezq3TIThzgtgHzlcA3wYio7ewU2X7d0YyK7uAZzAYV
	 SJJMgZjnQPQnk+dqR8UvMmM/cT4lupd0mL1ssnEdRV66nT0Z0gn5HXBwMWvOWuGfeo
	 sPpr8Aei8ypsfjTH9m/Up7hEoAUyQVLvlyhNF/EsqVN4kBPmy6+DC89RESKUJBLjqy
	 6aNefrho7Kbgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E703E69E99
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318255362.24160.531354440466660743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154bd8075f8a73294bf7206f7c3450bdded63bb79e6da99446699497ae674cbb
Date: Mon, 02 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733182553
