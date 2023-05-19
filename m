Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4940F3D3BA
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0887C433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684540685;
	bh=Q9PB7SWZ9ZV6LOUrmn2K45pEMktvoTK6NROqSj0rJOQ=;
	h=To:Subject:From:Date:From;
	b=tCPjh72oYNPIHijlFfBfrBL6EkefacVKjkpGjlwLz92rZHpjs0l77T6z560ZQnFJD
	 N/d+ccX1PVBVCoc6OihoQcCoRQwQNx6UohpnaV+Rb7n8eMaHlZNfVNgpfDpdv6rUNg
	 oneoZNmzkYU4pE2M7o0r/TTS/UGPdOHkcJCrkqChVwPBJjVD2uhOJGCTYRGxoZJupW
	 I4DqWkHmvvuo66RJ8OglxqIf6/4J3TkBSh8vvzLJeIV3ROOfoaYauNl0frPsipB4Q0
	 zIoNOkwmIuNaTvI7+BCHkZ4kToc0lF1oo3ZLGScULIg/KJ9/kbyMQR50e0QL16/w16
	 UiDX6NyDCwAqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF8AC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 23:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168454068575.7434.2949776148553964576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b11570f5510dd39d7fe48ec5ec1589223f889faadc0587fbbce492c660de239
Date: Fri, 19 May 2023 23:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684540685
