Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706A0134CC
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC339C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692899048;
	bh=tJmPbOt/23jxRDHI5q+dBHyF4NBgcBPZSybhG/3dqLU=;
	h=To:Subject:From:Date:From;
	b=WCW5XRKe6SmhzEp69YvFwIDCjQr0xGaqFDUdLaK1oAE32wQyo6OASVZHQjpwFy9/e
	 fOErtvBVYforZckXC7onnGCDtuC0Xv380JO04nG+GgPAo5ANP629Eb8QpdbO9ChNKB
	 OC/XFWe0BM6770Ok/Sg7p3F+XcCZzjc5IuXBhw/W6+9TFeoe4DtQl4aBp3VefFuTKD
	 7Z2hHvnkq0CdKq7Drjwx4R67i6h3SUCqa2eJ9O5YVlUJjXDvsv/6DdzRcqz2eCrt5/
	 p5fB+C2/2hYL8EtjNyuIztgPQ/DKCU7+O2WyfXPGCcEIloE4A2ydk6RjOnH2h3dm+o
	 NXA1Pt7sSKmTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD569C6FA8F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 17:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289904876.7208.3363237888449557660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c54c0d34dd2c3e78226d25700d80be3c2248dde6ed9ce7a27f8077ea4684fb
Date: Thu, 24 Aug 2023 17:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692899048
