Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372B6C2CB
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D47C433EF
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682624525;
	bh=Ujc+8IfOkj1QToSvPVbONo6ujngWMZ77HV9JSzPVcMA=;
	h=To:Subject:From:Date:From;
	b=EC8kBxrcwmV87d9hR+qFYti1EgT0Ef6LVHDfENRIi6QwZm1j9qsseZEK+cEVxZLt5
	 2Jllhv2GHqqvzWnUQZfUmZFhC27osPR3kllYugp/Q1ZxqjMrm4nPD3t1AaY+LdC6tn
	 9GHPzbIATC5CTqifoKWu83uiX2zSBbYh+0XatgGxFE/ERSiugdFvqCMA42OSvSfrTl
	 gmwy7Bev/OqSC6YSaLVw5xBIr4LP5Obxq2t2wMCeWZ6uDLuSmkFEX4Zco/wwq2HtB8
	 Vz00g3fpwRpnPWNBBGC4abqgL2zly77TRQfn80UwuOPSZ5Ysr+ufA7IvKRNyuuWdAO
	 B6D4tw/bhVnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0AEDC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 19:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168262452578.7135.13526211393342831525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48538929376ed12628d54336c27afdb813cdfa235ace18326c6c85aa0e14043
Date: Thu, 27 Apr 2023 19:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682624525
