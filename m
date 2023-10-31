Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3A73229
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLnxbPLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EBCAC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698731296;
	bh=u9ep5GCakkVTQNG4yQZBWoz/Wh5QzrTqIskHgDzwnco=;
	h=To:Subject:From:Date:From;
	b=oLnxbPLWP80vIl1dILN9RtPBJKPNlWIXAlfEFOlcBVg7/2ysyxk1W/pnr0UgaLZdK
	 rYU+OzR2itpUjjEdk0DvOoDwh7x+A9d+K4RR/IN9o7w5e1iKB3aV6YEV215vrpTXdV
	 oifeefl63/cRMGEudueDYPeSsSdsZZhyuEQCgmO0X0t/vmCiEqeISWBZnCTcjkWDsq
	 zyEK34eBrdDWJ4Bou2vRIlUqhFkNrkqakaZl53pbbCX+5+inDqaQ+qpSrhUKuTVH8W
	 y0XSF5eMqa3nTpK91hjX1f+ONGmG9fNOEcK6jeXfmlSBM93GYQOUKmd1kOehvt7c6D
	 b1jiWpgOqKrXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63099C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169873129639.13621.15191265173971635728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9c76c36ba6892be5b8b8ef0be5b282ccd15a6943eaedef4b41dd84ba4b51bb5
Date: Tue, 31 Oct 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698731296
