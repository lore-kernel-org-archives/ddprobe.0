Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C42282F1
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741799935; cv=none; b=OrcvyJ8JWbs1s2vCOTntrBTFlRfNv2E3Zm2UmaE/L3DyYm2dFk65xNc8EJ/+S/CroCFObkicQOhH4ShQ8Xca7i7QQA6NROsdZbwithCcTk8kocVYeJbktoAO4STAuPh1Gca7jYSt/6F0DaXdVWIvdf5UuavCFnw8J06hgBc/tYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741799935; c=relaxed/simple;
	bh=VjlZzxSQz7bjdTH/9iGDVNl6hC/RrZRPk86cnH18CAU=;
	h=To:Subject:From:Message-Id:Date; b=ZCBKChvC1ktI5A8kcE3EqkRnGi1xnw8ANF8+dKoBdyknwy+SYVUyy1Ct+qmmD8dsC7mWZ0h3mnKe+ZILjCTsqXLUfJwM7O9do/3xUVsBmXfLSQPPT91TuQcWhZ+d1RGPsPwOn1kOU92rBwlMXN3jO6OHglkJKsJdKbE/QmcCep8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hypbXyNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hypbXyNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D67C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741799933;
	bh=VjlZzxSQz7bjdTH/9iGDVNl6hC/RrZRPk86cnH18CAU=;
	h=To:Subject:From:Date:From;
	b=hypbXyNM55FdS0MXveZpQQMplqk97fdMNJKFgP+V6zuXQ9ItvQjzKIBLo5XC5DA4V
	 ot5/Sl8bxN/0Gv6kqcfHu0cGVsLyBef0xWTX8+0VSoszjoLXfVrL/ASRQfrUK+BEkb
	 2ju6uVifgVursPkbsVxEU0gh6w9w9ZOKvRFDV2Yk8OUResw3UI8ANVtD31NTk7asAq
	 8BW0cb6r8OFDXtbSfCIdLPO8iVVGFXJ4c4jHCNpVkH9UQLxIt8n/AkXQD4Jpoxvwxa
	 5Ryf8O+DgzcN7jvx/vnRlncvOr//4q0Xd3NSktWPUy8vO7RRF3+1+4O1G5hJo5JJNu
	 Tkq9x0rlda6AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AB5C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179993362.14853.3597067864557243144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c318eb80c4503357a8bd6e112e19012500379f488abeecbd9104fb81dde0afb7
Date: Wed, 12 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741799933
