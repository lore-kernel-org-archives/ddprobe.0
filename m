Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A759467
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eta1ZCMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD01C433C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704701896;
	bh=kroTL/CXng2NiYv0B/3Buy9RdGmdt8lbZLvcRBZKiiQ=;
	h=To:Subject:From:Date:From;
	b=Eta1ZCMwCk+97Eo44mLvqR5BhNxibDWa5DfzcQsYTJS02NdjZG3bl2IgCgyfxSce2
	 KqnKYp+Y9D531UtvJJu4W+ss8t3KuxtqvL+hGxHvlFv2S0s5ptrqZahn3lS8j6CeeD
	 eHqLVXj37uV8kHdotS/Uqe7vvpa2yjyAWXsDke79nIewgdrtT683t1/d+g6VMkFDdE
	 eIu6i8AEcG9vt4YrhoETXNxX0f8xoP7A6lMP3AOthii8aZuGnORZS3I4pM07JZ26tS
	 WxzHjuJ6bvuHIK1yUjKi8jtDt/NhptJ6+SSaFQFXXTkTugZEppL7L1uThwi47S/zKK
	 ax2JSQt0qtwbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612A1C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170470189638.30155.17543700896671557041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec5043e514262ff7358726a23d6ff12134af595eff31344a82dd908a3ec91e7
Date: Mon, 08 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704701896
