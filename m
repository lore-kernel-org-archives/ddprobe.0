Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D621FD3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872A0C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672555887;
	bh=hnDcHS4cg1yat+iRjVT6WIoy+cSm4UnG38I4iC03O80=;
	h=To:Subject:From:Date:From;
	b=KJtFsf1T2uOhv4Ja5B+YAsOfM790zFuNmLkeAYTMb/dY9le1ICXU+V6PpNA9rhUoH
	 2VlPIKJNQONJlPDnRWtlpAjG5RKIwpf+LYE4I6Sp8t3WDl+PGYbXg4Eq4mluTVEK/a
	 MH6A2ZAACYNFpqQH6xSIi8Kzs7STGLwzS1STyMR2RjZlkaE9x+8UVB1M51D/2OkCaB
	 TOQ5V6ztocAbf4yr/MBg5101egssbggWAW5JGng2JJtz1N+aM3gSqLclyekUhK+kJT
	 bxxCIENsBbWh0vL1P2VYoQWbXhrCSLI08ZevDlSSkYCHYBfrnixeipf4M+YCbDhQld
	 stJk/xL+/K1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9A6C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255588743.13051.10359783904290687895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724c8e15599905007fc5ecfe99460f638cca2905434529d15f0e1be003f4a79
Date: Sun, 01 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672555887
