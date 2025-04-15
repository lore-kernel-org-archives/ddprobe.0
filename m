Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A92C14B945
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744708794; cv=none; b=PBtzT2z5LaPOJaELqlrIccZTNos+CAQhGq8wF0O5ZQrsbQjf/6IEa3HiijT1g6ceBLL53rDGtczDsG43FLRvfAuhzUSHFfecwOE+fECMu+2BbGQhlH1MKQ4nwO6tliehgQXlNmll6AyT0Rla8Tc07Llt2VIYV6eqUTTgQwM0qSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744708794; c=relaxed/simple;
	bh=7McIBoF1Qt/wsB5Nfj58qALVhtwtGDP0XJeGIxUX4pc=;
	h=To:Subject:From:Message-Id:Date; b=ps5EbEury8knzC9RA26vQBBF5gqFP+2X78GBJfftUFmSg/ujH2Sv2lgcw4h+WfKNiZ+WCoOqskO8/w7Zb3O+b3MmKzfJ9rjtc0ic5ezgJKaOPK8OO+jRHQNG57iu4x1EAqLuTdq1uGdmHNKHWPRYCkhH1wc8n1ygOMM/DKrF/pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfKkfru+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfKkfru+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11B0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744708793;
	bh=7McIBoF1Qt/wsB5Nfj58qALVhtwtGDP0XJeGIxUX4pc=;
	h=To:Subject:From:Date:From;
	b=gfKkfru+92zJXdze5wdINWz2+7SHz1qvJIzvj1BFAoW/vhJ1zxIiiDnVPhG0XTJoP
	 YNBs27Ssmj5N0Hyidlu2ExvmA+mzEIjDXM9rOPSL1Yt1rZOMnDGh/YJaREtgZqRaOu
	 WMAbwtuvrZQUs7d4vXCU8ogq8AHO+5s4o6MM3B/D/LCkYNfPkjs1gKYvAXNGPp7oQL
	 kaWYjb6ir8qVk4HjVuVXP2hLGjm4xTCJwD4UeNZZMGfBv/dy39eH8S9kevPlzoRMYH
	 KQ7QcSmQHjzkC6m2uetLgGAlD0tBI7u2j2Y6wHcxE7/S0gPDXA99xJYkrPEE1MKfcF
	 iXdrdFzwi4eBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8FCC369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470879362.3526.9610441968250205309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc4c765871be629267a46bb4e70c0ff687709fd949724d2f4c1e59f801cb1dcd
Date: Tue, 15 Apr 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744708793
