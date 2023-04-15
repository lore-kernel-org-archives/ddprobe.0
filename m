Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA997EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC0A3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681522986;
	bh=rwkYLJr/TswtqpiDp6N6GCrmMLnKMxzc0fOOG+3jAs8=;
	h=To:Subject:From:Date:From;
	b=mw8s7PTYoV8CX77sskGHCC77x3y4YnHDcZipKLgMgLu9Zy+brGGVFFNaVyUuOTitC
	 6+wKLtvwzqe4PkGuQLiN+2isefxijQDDBYxYpF/kqQuHKDxwBS5nBpAwH0xRMsm5VM
	 1e0gEu2lYSYlZekEQFuBrifsWw2RHi/urjZT+1uLwG4w4nsC4WQDEqml2aQdfHmiJ5
	 LdC9DHVOsODwRgkba2CBzhOlRHCNLxY3V/77jqZSMWJaTy2BlzA4yNBi5BtevBAFn3
	 t8mxU9hEA/LiP3LVizGm2e2q6c5KMWucdMHWFK+vrUVKHE5ByG/fMsj5w41tZHnAJf
	 ngRXgYmlbokMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCE0C77B72
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168152298577.22673.13930475688375730182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654347916a96c8c1caa539e6ccc3fd57700d5b9823999d6422f30e26354d34fd
Date: Sat, 15 Apr 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681522985
