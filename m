Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4836B
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F83C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682224866;
	bh=rwmq1y6fe3WQ4LLBS6BcI5dHLx64xXTsJ5lnQlMdc3o=;
	h=To:Subject:From:Date:From;
	b=HDbxBD+WKS21pWIeGYmf+xrMD+oo1vKrWdtOedpGFjuQA5SmMJjixEeo6auu98Jow
	 ayDHswbTQUTYW7JThjG2Wbyr3UpakrClc/uS+Nf0WENCOlE6avZ9gZGMQ9Tbg39bL1
	 lozXGmm6XqI9bJBA2cTapjqYMLq3nZ0hzpBG2y2V0sUkaFmkWExMLWdIlIUPgm1mFp
	 0b5NNK1pv4He/Ko8Xn4D3dIfcjN++5SVjqDNffR/5Jdeh8JmyKLhmzqtjt839HgBse
	 zKD+GTU8t4iX6YsLDJ6Malp4SQDqGWuCkC8LBzugO5hsJzmRkaXilrvMtJCaGBNIcz
	 TlKy6uNhN4z4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAECC77B76
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 04:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222486582.11344.16935116022121742023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79346f6e7a72b24a0c69e7c649e168c24e869d48e4678d1db5b188bfb0c52adb
Date: Sun, 23 Apr 2023 04:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682224865
