Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47717620
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED13C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679892725;
	bh=EVrjVsLSktFy6XNQFPYjroCZW8c/EOAK/Z+JzeM8JKQ=;
	h=To:Subject:From:Date:From;
	b=o9pXDJDrukCTGth+EW8aC9wXNbe//LlVfkQCF/gbEglSkkFkRPkZLQd8j4Ixlmc6y
	 CICzN3WnhcMcXmOtwDZssLvt0KV+W/bdFUf7coFl98l17QRTKvFZvgpkgqXf7Cl/V9
	 sS46OqngB2S4OEdDkKbL+U2ibb//YDpMM/dSUMJxuPacIBVQV6yn6GpqK2hLKfgNDS
	 BzDnpgTXOQLk72qbE6mPOuJGdMki/RUbqKF0yWxEXtXaV9pD0KO7fZvq2xxT2H6Okw
	 rQQd7CA8aIc0TZXIeC75tevB7G9469tLE3NakEiu1lJ7vaw2exZjh1d9uC2VcJs32u
	 hwIYRqZMkil8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E02C7619A
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 04:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167989272578.21274.293227468881857058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5e31c4851533e93a5d51b99988a8ce442a1e46720b797a52696d289e6f74365
Date: Mon, 27 Mar 2023 04:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679892725
