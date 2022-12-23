Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE70923A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88453C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671814887;
	bh=LNWgNzDAIYSESgmhgF/irGR8uzcbTBuYYp0NfsWjnUg=;
	h=To:Subject:From:Date:From;
	b=jzSOUPIUsdbPjQgBDKruMN2T7gUlsys8+9+Z4hD+Qy1y34glPLXaiStVYVdunbxot
	 L81LfVDXiMIifGiKng7eW/7L2k+xMrC4C9tlgfrNQJ3htZQnxrSEIHGcTDuYl6LF16
	 lB48fIDzdsnvGWHy4ymGNTDzcUvSgz99wnNKf01SQgyEV8PdQKbh8gOyeK43MhOl0k
	 BV+oY3mWan+1uQ8/O80AW+hG3flEMHaubpaZq6ODoQVmvG495DO2EyBNSn5eXYJki7
	 mTevXNCTrMkwHf4l7UJjLPKETOU2EchDb3/y3FSyYwbluV7KqMy+Wiq3lqTH8ttlT8
	 SFyKIZbd7RD4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6820FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167181488741.23550.429113207419866946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581daafd43ca67e41035c12c78e00cf0000ad1e1dfdd1d2c716fd20befc0cd96
Date: Fri, 23 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671814887
