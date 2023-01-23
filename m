Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B53A7E6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19FEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674444725;
	bh=DstbWlsHH9GUmnp1Y7gNFWVHHayat12YI6Wk05CXI3g=;
	h=To:Subject:From:Date:From;
	b=ApVq6T8QoDUjeTsYNWpT9URj/WwZYHVFqjzbe1OGW/Mt++UKcgBGB6N24b+tophJF
	 QMU2yWRb5cZ1zy81GytlGTWsbYxTLkeWe36+OHWgupgfoqXBnd759bwbjnozn9yB/e
	 9M+d8gZ9t7FhCS8VbwpmgfSPdBiqR+YBjg7kCTz+9TWyhM5wuiMs0wPat+B4O/YbeJ
	 ZR+PiHkXwXBUqvOvSaA8ZTdYdbk3u5awh68qNRBLAWyziwj2zL5xOt0cri5fVhI3pA
	 Qmw5yOaM0UKVNrCArLAfbhCdoROLjVWHmsrwB/BP9UNyCW9Rgq/8fOPI8uBen513lx
	 ECnh0hICE26mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C3BC05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 03:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444472572.19836.5465943525578653980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13b564b2040c397947e45ffb8c83b7f2c6b8042a9bdfae3218c7b5279ff6c31
Date: Mon, 23 Jan 2023 03:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674444725
