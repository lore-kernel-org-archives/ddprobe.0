Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE77322A
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8032AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671375687;
	bh=c3+LczAzdc3HbfJSPniajt2mLKNNTsFFtL4enTmg6LA=;
	h=To:Subject:From:Date:From;
	b=rF9vcVT/gHDjBxXIsVkCtN3BTCbFCvvJ2nHGieWzMQ+gkz4bH3fdK9Qjm1zCDWTGi
	 qzdH+/PPG1A5yUWHoMwBdTkzl9/SbjPHqXRrEt9YUvV2NjKwJWflPJoiFcEVhbkEr2
	 GIoI2LnG6t4cvrLb5ZPDzk0SS98V5nclvwu1ExazkDauSV4tkGkfuai0w/sCyujR6p
	 tp+OoSVZ7iuwqUc3DmmfUIZ28q1tRAst27/uK96bW8teGnWulH1A5zah8COo4dWAMI
	 qpMox0EuHszU7tcK3USaiVtFa0nXX5H8HK5W/I5yai4Y187kVAgQzWdaJFs6IILyWQ
	 MCLR268enU0jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B24C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137568740.4914.15963911986258223299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3873795f0a8c9625e8bfd73c3e0ff47052244113e6f43daf4854d7fcb42c1da1
Date: Sun, 18 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671375687
