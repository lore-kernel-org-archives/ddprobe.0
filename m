Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CAC19A
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCEDC433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677904625;
	bh=ruhH1KbEFiyB7ZL/dFfNRc7spRcOZGheaaNvHLn7fsY=;
	h=To:Subject:From:Date:From;
	b=KVm1d4l1jgFiHsMCstMLWg2g/qC3IBwIXKuruSxkJrOMNOCtYjzwbt6lAihQ4OSAJ
	 3lWaH5nA1wT4UHvU3DNLtDI75oKAWcHkZuRcp19zSiX7eGgPZynfGJKQoOkggLqQtn
	 H8M/F2n76xN80Zx+UQa2yX5UvTIeHNdeg548fQJxYERPu453amXxgitWxhsWH9oRDp
	 CwMwdXaq3MxBcxksGWKAC/QiUSpaufup60xKQe/sGv3kVlRZncgLde/s3QH70o5Uab
	 hMmFTm39/qiyzojDHGd2Rjde0DBx9upAiwO+893pjpia3KQnbXusMX97xsWUPN74Lr
	 e0icsyayEPpbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBA7C678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 04:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167790462576.20917.6121044760608428594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c4eb35787b233762e81e4a6c504cbf78037db86eb9f132e8f9d3794dda2819
Date: Sat, 04 Mar 2023 04:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677904625
