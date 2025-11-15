Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355F28695
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763210994; cv=none; b=gIenW5gw5D8TWy33hjD00U+aFNxJZcvXdGn+CFXN41tbC2DbE7xTYlTWfIDZobFqhBB3hbl6Tc12+v464tYe6Z3heFLNgjdpBAXRJtu6xrKwebk4VJ03VN9dFTXu6AnwVejKM5hbQhb9KBLDT+vQ8+XxWrulKB1vLOR2DjsUSxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763210994; c=relaxed/simple;
	bh=9U0PEcpgq0D/0LNuFf/Sn5jKMQLYxtRPEX+YUoqwf5c=;
	h=To:Subject:From:Message-Id:Date; b=FBXea2Jm9vGiITac4nside8lmHrueXQE/67M9PA6M1JNDCHtXg2yPEAX21x4YqHgOInui1fd/FzajX0Hndhron7IlSAgc0bpltqrs5gJAXdu+dJrmYPT3yW+0AihiP/9DPSW3h3oe+eV78QLHVTLYl+VYXmFjqwKAgIP8APuPeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfRmEbv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfRmEbv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A899FC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763210993;
	bh=9U0PEcpgq0D/0LNuFf/Sn5jKMQLYxtRPEX+YUoqwf5c=;
	h=To:Subject:From:Date:From;
	b=jfRmEbv5YkPbfk1yNGQrkBYbA2ls4OuOa8Bz40xMvIlnm2gl3plFPNSm+8m2CcME2
	 C3tuMqd6jhuZkq0P3XQi340cjB71uHa9b+Xt0WVZdj+FWKF7eNa3Xy6FGqnO7LGxrX
	 DC9SFkfnjYsB3GgYxE2yNSduGKxY31Fnx2+BakLhTklLad753OOfotWwVwtf0zz4TG
	 FRywvvWvKyYM5lCKt5cGViVPlTq61T5aMDpInAXCfk1kfsJmM6lfy7pLv/HKtfxqkh
	 i7futTyuA239Wz1/eWDREieRi7KUuZacRD+3YA+JYDmStD9GCM3yRcZowqIhYYCshP
	 0WfFvbOFFqJSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98349CEB2CC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321099359.31310.6624597205313282656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a06d5ee10225d209056cfa6969961b052193ea4bb10cbd6bd46b004fb45823
Date: Sat, 15 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763210993
