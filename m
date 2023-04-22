Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1697F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 03:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E52A4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 03:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682132405;
	bh=pefH6bcI8JScuk6vsaDG/xvdqFlKHLRwq1WgQ42OFgc=;
	h=To:Subject:From:Date:From;
	b=hHYerv6FY6Fg5D+VBqrYOkPsydkIxg8uNkPnuglH83I6g0C2ZFEKYBjujZFf9Zf1K
	 1S0VNMEtBj4F+8t+vjO6MVFR3FsrO3u61octGEJNQFkCBNKSUcfWDNZLW+Z3GmE72w
	 OX7jqesTwzPsBliEIarU6fHtsrLuaQTxrnHsabK79AIsQZZiFOgM4mV33vZcllvBhj
	 MeS7gfAnLDZ8ktVuE+xgvCmAcGyhlA1gcTC2lavBQklVjWQlGwh1VnR+l/KDieWMYW
	 WSqyJSxecsQjkMfEf5KvQQ3yWZdQ5jPKV6fB8liJwrzMpuqJnv1tWK73yOweWhVHuy
	 RfS22B/wFwldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6923C77B61
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 03:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168213240580.13906.15932444137156651089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec192fad9e25c1156558af600392030a3308f4d3e3d1c56ed53cc504318b129f
Date: Sat, 22 Apr 2023 03:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682132405
