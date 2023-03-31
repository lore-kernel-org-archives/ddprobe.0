Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABF32904
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 276C3C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680268266;
	bh=G+3/vplQiJYa6oIVpD2wJQMH9unnP9gyaMHbS33yvTY=;
	h=To:Subject:From:Date:From;
	b=crffgHNR4kAHU4w/jzTmvsQ6f/hYGGQu9vV7bpBFfypiMSeCKgNTs78aDB0gP8jIC
	 mCfcdxYS2E5X8CCnpqytde2zRg6wzSmFIDFuktJNfsiEGrzymD3dYQrmf8nyGHaJM+
	 KPviqi2EGND+taVspwzm6k5EN4/sD2R39/MvdnTQYOqAwZml9yn9yoq6WcglW/g6FJ
	 ZyuL6DiHGxxgoE04rEvOhFcdnt5F1DBU5ZFaLCecYNq66ljzY2DJrzmCy+gzxqyZVc
	 Bcwx67nBGmQ6WmAdDiF1VC8IO5T/ZlkexcMTKMknJJW5ptaKUjdE5P8E/x+OU5OQK5
	 PPXej7rKvVXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0587DC6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 13:11:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168026826599.4131.17833584619792549992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d113945ae69eeada9f27ce7d469a60980a4d6cac33ace2ed7070a2d81cf3a8f
Date: Fri, 31 Mar 2023 13:11:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680268265
