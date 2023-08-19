Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0BA634
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09ECC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692408248;
	bh=4JrOsz+vZNd1gXYxkGhpuWAww29S7VZ0t2xwoAX4Yro=;
	h=To:Subject:From:Date:From;
	b=Q+aq99gJVMOT1Ygx9P6gk5Jl68GQ4cPHzzx4E8wvCDtzLHV7uqjdyT8TZTggtKIhW
	 rpBwcIUAX/T6Kv8AGYDNQeq6vYFigx4bvGTmwSOoNc0u6/hMon8EaCpzBqm/HJRRL6
	 GhN9nLxKfIsUVB/24S3SVIFhd3F4qipOcAFEsNvvkLry1Weifv9Jhcz3taaJUmg6uN
	 BLWAHYYFpMmoXboyXOUYWTcyRmcIxoLP6aA3/NNhTO4sgRYxRNZVgHLp6vYkn/kzBq
	 pbVI+fJGUi9rW18H48ct+Zg4/9LSHAsjSKsmYnEn37KIdwwEZYtkGHKTcmgUtB8Rv1
	 3nX9XM40mfK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F5EE49A0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 01:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240824866.27407.2187911388800282139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54053e1e7221fe0161dc46459a6c285e59ee9bae21a7e4ecbb71e72bbe1e8e8d
Date: Sat, 19 Aug 2023 01:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692408248
