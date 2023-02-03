Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C112ED9
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2C72C433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675392965;
	bh=1jRZzfanOqlBPCqWlfhAKeljknUwCgUGm25vw71VrIU=;
	h=To:Subject:From:Date:From;
	b=NWcAbBjllqKyDYXCyV1ANdZBUTFCXaiVqFU2PpWXyD3/kZ9QeK3ATC8I/QjYv+E1G
	 /X9TmyLm1Ye20M8C0hGGT3obX8bp7vrRJy+2PVrBSC5HvPK2M5o2f4coR8cfegmyT+
	 75JUPUWJQHmO4+E0k2w4IIeoA8SsrwrTNW92xjMMA6sGRZJq6bvxYoMCKpMYfk6ojQ
	 v7MfpAQ/Pa+qPNpZDok5AsjZJNyTkfI5oT9QcDFo0Emv3Cwv+1KBFn7grDSox4E0Fy
	 I+YAXpYH3oBV1nzNyhY/EPHMU6iAiClrnLf+qpnuCwONWQGx2VZcCskGnyOttudr6o
	 lsfb3AfFMFpPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57D8C61DA4
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 02:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167539296573.5546.1461874008465597335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94fb13aee919a8fb715b16eabe8182c16d1feff43a97f816ffc96263d6b3e712
Date: Fri, 03 Feb 2023 02:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675392965
