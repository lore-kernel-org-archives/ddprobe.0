Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF8C366
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 00:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C7AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 00:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693270448;
	bh=bQcVJb8CfUAn59aWXzpkko/CUX4YkTR/fbR3Ub3bAAQ=;
	h=To:Subject:From:Date:From;
	b=pXnceMsbpxgbpgqNtp6XyOTrueLMdPvHfoDoTgt9y0Yyy+Gxc6Pw6XEYYyhDM4jtX
	 XNnTgMtJgPoS7Ozn9dtCB/+elT70pN3iKrvYUaTUXsfBiXvmGyefRl+l3w8jap4GDR
	 f3TmHMjwN04ANpFhOdVgDccQgxUkCR7Fib61F6ObTP8OsS+MOuZKTu9uEaNLSdP05J
	 zItQzxTYIW0sYEHGzdz3/pxK+f/tpl4+oh0PvPUXcyYtIo5DliY21QGkp3InMFDMRZ
	 q/E6qbTBq+qMY6+gmv7erg9D5ktYxtW9450l70CNLG/QgQG/YjDVKTHU6ndaBs9McG
	 6QXpgx1jzFn/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B86C83F12
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 00:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169327044866.20313.12270162075172759161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20124609972e0b5c3e26a07dd5b4ba423c2312f4577126ec8fbdd0b87231e0dd
Date: Tue, 29 Aug 2023 00:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693270448
