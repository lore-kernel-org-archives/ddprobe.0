Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA686FD3
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB94C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675724165;
	bh=5sO/ajTfELN5I8nu4YcGtGAPViEkN85eWCKyZQ3/smg=;
	h=To:Subject:From:Date:From;
	b=YYHLijWyjUqAMEU1Ib3tcONWe2hi0K80gs7J1kzy+OrXTI13p6BguwuBgNJSbWqo5
	 aCz/e9Q2sjrnuozVFoWc3eR8aOyFBjmV+XYs96btPW7FQWiXk02jrxOJOK7NmmEkgq
	 8eW3AYpvrthZ5G5WIHg0ecmQizvbQU+breQkhr7gm6qxOtsnUHERk6mMw934kW2DkZ
	 szpwaoIj8roBe3nK4bw1N6Sl7WNSJdN8akyu6VmLm96efupEGsRUc8uiZQZoO0Onf5
	 CLhAvSxSRDKVY4Lsu1EEzW3Hhq06IUHh6d7n8EvrQhML1TZIaZskuo4krGv7tQJvWM
	 4wdodPZPkgRbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F6EC05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 22:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167572416573.11189.16776584970740597355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabb25ff265cdd25e7c792b8aefa149c2a87c5e9fbc122e76b67d87648019ebf
Date: Mon, 06 Feb 2023 22:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675724165
