Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2355ADA81
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF641C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678491305;
	bh=Gxutbi1YOORdfNnQBWp0rNrSC51Y4D46h4mVqVigjFU=;
	h=To:Subject:From:Date:From;
	b=SO0KZ/rpPnORrfPeTxlv+TqeZiOYUU+t03d51BwoRP/gEyFTQS3ALrE0KFPitJ1pV
	 IhHXPTO8I8BqL0oe1LpCS+qBJ4PSPhOAEnZjonchxxtqbUw7gHMTXQUquf1mkcJKK9
	 Xr1Dcgj8p+oZEU00LbgZg3/vFKiSBCN5d4liGjhEHnPx/kX38kuYQB2Tr6xVR6J38b
	 C+02YZDInKA526ZpuuPg/KuJsmhNsWr6MwCEQiuMdoBJs2jlZcdr9q8edSBWAdD81H
	 Z7/I/xQaViGBqog0fhaTCz8jFUdgOEDNT1+MmpcW9YLt6EkVVLlxT/jPBFhG2e0bgy
	 rcUAiXN/TvZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F12C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167849130572.1341.6493332823264021317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ed38a19c1ce3b1213d7b14d3dfb7fc58aae0b0084622550409f7b8e481d16d
Date: Fri, 10 Mar 2023 23:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678491305
