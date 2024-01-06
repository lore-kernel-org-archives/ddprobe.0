Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A94A1FAB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlH+crsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78700C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704520096;
	bh=BFFlU+7vLWi7WR6bDu/1vDvpkTN/mH1VpvYlWxYB5XQ=;
	h=To:Subject:From:Date:From;
	b=JlH+crsBmyARWB7ed6KEEpOLbvf61enYLSFK/cy9ZpqN5CTElQecgS6OYApcBr9zB
	 vQKkYHIEyxX/xLxzqCzWxgNCLZCwjI9FVMF9QEcgbuDSTb0ThuiXOnv30bpK2gJ9DG
	 tX99elK3YsMlDBkVIq6ajUeRo1DQ5Fz6rrjlxVCq1/OFhXl/Q2iQR8RYb5F0aEUjmX
	 N++wJs4umGiLg0ErXydr1GKZ3dwDb652WpFb8BEXxzbuNjEfdXvVeo/NfSm6lKZ4QU
	 OEeBO/XO4v8p/inmDZxna6b5xp4gtKZXN24e3iGKVp9I5QK3j1D0I6XS1UsLXZhzTP
	 tKQL833hiXnoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B633C47077
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170452009636.16107.7065796107990119317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 467ad1ecffb891f625b01531dc71e4b56155c8a42d17e1e509332061d7eb5464
Date: Sat, 06 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704520096
