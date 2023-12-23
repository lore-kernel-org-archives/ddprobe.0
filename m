Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB11ACA5F
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcX6foqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6D6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703332096;
	bh=BYSqHvEt9hY9sGAvWTTB6VuSSS53DcbCK5pb+DYgRu0=;
	h=To:Subject:From:Date:From;
	b=mcX6foqc/9WLCtfLhGPubzhBECpumORu52EtohKFRV7Q0TiZs0hCPRPHE87zMw+KD
	 0yy5DRN3KbIlVK3LOELlzUj93r6bWVtrSZrQo66rnqfYxxaL9eK0TvKVTK1lVCPDVA
	 UvvHhi5gXR9BNmTl9Xs+DIVCV5vh0wvcwM9XJnIFZLhQiLPGMcCbydFqaeww8sgniv
	 W50f/2CFryOmfHW8smRZLAakU63Iik6Q+SfWAU3tU4YPCU5GvkVdWeUtoUTqhDc5qE
	 ITRU9PXEaWrO+Nb3pcUi9LOdDZZ6/pYhrcQr1pdd2HSr8DPIugzzwavp/1Sminuf2L
	 k+u2VngqOJqkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FDBC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170333209639.19904.14947342702791197499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936fa50a9b20efc809d136dd0ec5d7cf27fc3e4e1f3e6363dc69883fdbf166c3
Date: Sat, 23 Dec 2023 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703332096
