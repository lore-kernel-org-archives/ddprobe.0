Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D712906
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856BFC433D2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673964687;
	bh=qLjAt9kvsL3NLtpmjnGz13skg0Pd1GTrv7YUd1RY4mc=;
	h=To:Subject:From:Date:From;
	b=bqJsLJSOIN4QPT4Au4lvGYdqcSnbLPuT9k+QjygtVN3x/g8j+fjNHNWIamuCmoOWU
	 j487LeUTdx3DldJ7/UBAgAbmemNhsPk3sV0sPEwdQ0wct1fzOL9o7xuk7N5MzryeCM
	 YmuYmrTrMIFM14jRIb3V1DvoJoxQsFj+34sD6hAyfoRCZ7yks6cIYn37N9fK6bCMbT
	 /ThD4RPqQM/Gs8LuBNPFCVZbiao1hkGTUgev98IQ9AToqDaztL2LNDjx0dqlo+HeQV
	 7OJll0b5Oz4tODq7Xk99Tk2KYu1qvkjfU+GlaBLSnp7S5SjQpVIa8IHtFjz7lHWS3r
	 oAGOSPFBcZRqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69409C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167396468741.3399.17607649301327693487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 049e3caf24ad7345ba486affecf8e978d6d8b660477c73ecf20c0ebeb68cfcc4
Date: Tue, 17 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673964687
