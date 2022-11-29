Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6BF1322A
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C288C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669728654;
	bh=KpPJp6Ai4iH0N0Ktyo3lqLmkLKU2b2RzxJxYYKdHKDg=;
	h=To:Subject:From:Date:From;
	b=A50BGBpQBlqqyVVw/a4f6dkFkbpuJE5v5368yQqnN7V7k0LjDPjQL7YpJj+gcQtTa
	 IsOsukmqDlH1kZ5QWd4su1kMG7aCfcYa8ojs2E4SioAm4QOYoXW7cJZ1WNfZdKyJb3
	 g7K7SxFJkRNV4hEBAZXeQ2/8JhQZqXSE6u3wu+0BW+J+B+zeWLE6UvSn5boParBOXE
	 ekv0i1nVGPvJR7aKAu6UvYWYN0qSCc9se86wP4im+59RK0MhtqAaKqm62m/8c1AeQv
	 ZJu690LN204dJEVXuwkDGsn3106AGGEE8MzpBpuO0uo9Y4s/IoxPB+Ex0n5gT2pJsp
	 WXQJd3QWUvsiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5152CC46467
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972865432.24622.6177764129651712468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7113d8c6fc9a2dfba6a20e4c94c7af1293c2843d7d8090e43e7377c72e377a
Date: Tue, 29 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669728654
