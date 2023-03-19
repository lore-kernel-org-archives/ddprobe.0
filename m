Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648ABA35
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 026DFC433EF
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679268906;
	bh=N6Ez3SIM/p+bzOE7IZqKE0lSNiuA6IZxiX+mZWIorRw=;
	h=To:Subject:From:Date:From;
	b=bZYUrOfopdKq2D3Q8k2LMwYPmtm43oU4erXELdPWxv16yfZR4v5a+x4r7c35RXBlw
	 9Nt0pYJiZLj23w/6iJaffAV/n0HozSd1eczOaFlTO9OMmnsESrfwPkb6XELXtrM0rT
	 XoKkuqqGRBfm73RO86jxuR+E581F2jHlz/7ktnmdNouO0dzBvhUBiLBSi17rHS+KJf
	 1xBjcSBJ324DR/lRtBcFMVq/XF+etBUrfSbxf4sHzH+KZrJvQ4RgblvPgkRqHkLo6o
	 BGslbN0Z/qeWJjLFeonhagupKsSFbLgmBij0ec0bxOFQcx3vSOIr7FcriMGt3+DD3r
	 MZ0zKBTg4iDIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDE8AC6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 23:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167926890582.13992.214602727063829841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306df5329df78c48f494716b5168063651c4bba2c855457b90c15d8c3d90d172
Date: Sun, 19 Mar 2023 23:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679268905
