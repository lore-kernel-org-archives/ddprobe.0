Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367814AAC4D
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789746036; cv=none; b=Vv0sJqJX2UgDlbPzEgRyv9qbM9pm2l3dlsUCt4E6TWlmAcgxlyrYASDe4ynR7qQUezZu39oWxTVcv2yjR8W1CF9XRcVuflOjrNZ9fdcsV9oOnllAcfCHUV/r8GJjXWGfvoZBm3cN1WzzkvlkXq4M/OBZ+B47uQqGMmycgAhVGwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789746036; c=relaxed/simple;
	bh=mHW09PIzb197n/IzzWHNCEL19MdL/wA51ra8tMEWZSo=;
	h=To:Subject:From:Message-Id:Date; b=BKtviHOwtMXX5qTrEA1g2Px80wxij1oWsm3hTOhMv+BKXUJ9vY9bZaU4rbI3gdJ6Jx4T8Zs5q4dz7kpmPCEyTfZ8Bl4wWWI0qs0lRvvjiBA93Vqwx9FccFpFYSfHE1V27Y/aBKJmUkUmAS6AgUxhGHAn2FeA0IWkAKy263T1QOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmUFKcoE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmUFKcoE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC625C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789746033;
	bh=mHW09PIzb197n/IzzWHNCEL19MdL/wA51ra8tMEWZSo=;
	h=To:Subject:From:Date:From;
	b=PmUFKcoEiTf8TxzbiiE/uFQdQmKQCi6ZTJytiwC+/zLRSA7oD6QP7Cv4i5czo4Sbh
	 pIGQt7KIistDmKQduv2Q+XH2iNVlnm0pIPfl210qToBKAC/X2fmm3Pl0VhYJjjl/nz
	 CDh5sPTxqlJmlDH0CgyiZYZY6U8+P6+YwEiFhY2rC4IxudtbXdkwHZlVrVtgws7NUA
	 plqNuIxcykv6PfADSa6kkBJtNJDsk7by0TGGS1BFR6kpNI4l/TZJVw3cx3V6an7rRQ
	 JeyDXUIOWESB9QHszqWpkwISkJPfXkwshALqw+u2O8kznBxWX0cBoJpRwFZVzvnqKY
	 LA8A9PNg8/Zbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE45C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974603369.7404.310843520634961206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c3b910701108cc0b9878c03739b382a356db448f4155f60cc722d1162c3be7
Date: Fri, 18 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789746033
