Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343878BFB
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcplVKPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F9D9C433CA
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698386896;
	bh=WEnlSt9u/qCAlnL48gns5z3CbdtZ0UScb+aoPaPXgPA=;
	h=To:Subject:From:Date:From;
	b=rcplVKPbfQ2UeHwm0TfNmSR+qcRVuMWnHy7nbIoEuluvwLc3ElQqE18XgEE29KPGs
	 AMY0yNo7f9Cp5BtuQj5nPR8GPoVzs1c4tU7P0loSEBEvH7jRvsjMItwtFKH3gY8MD6
	 s2gvvDQLwXJRvQ0tS4fQ3oFkY++QBJWl/ms2ioz4CZNRLeherCzoyWQ6lJW9HHX5Ts
	 rkZzxebZyTc2EiTitLQy+NbdBX3osvQAK1dyrtsD0nKknW7NNpz6Qyp32EQHv76MFU
	 Aukn7UTwMdjI/IoWVcJf0zFw6BY6fdonl/PGr05bFzybpW6ZbqJtaHHZik7VNoIezW
	 JeQFkr7k/7oMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA85C25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169838689644.13206.3771102963987099344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d36cbbd50a1bc1218e096edc6705a9e3f2aa2ce09acd980fd37bf7c75bbc3d7b
Date: Fri, 27 Oct 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698386896
