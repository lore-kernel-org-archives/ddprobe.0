Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 467542CA5
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AE9C433D2
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680392705;
	bh=AubIAyrL2ics9bimEO+ZfQSoDlyM/x3/indCrIAZOOE=;
	h=To:Subject:From:Date:From;
	b=CtvbzqRXU0CuXTJZ0VcmLu9NeredXjiIuG7VWHdJPRlQBgpeVgEuJ36hODm4nJ8wl
	 QoYMBpgi7VxY9ppF+3YkY8Qr/CSO8WUibiJgLsEckG+Tl7u/+KPVonNxvNENDlAfIg
	 IKx2fnkv3mmdngXDqcPo1rzRTlCw1vAVwXe2QysjHWBsQayy87cUu26xNHg1x3O3jj
	 FysI3bgV5UhNzE22EsEXayREIzwCgZ5JI64/GA0cZjWsvOwgpkdBOBKq1EhQ8cfLLD
	 KGMzGH1DmFHmHC+Ndjf+zhxF/ezBhNiAIGUeTZhZ7Vmv43vGdWR6qfKYDaCEiQYPBQ
	 /4Gf5tipmnnRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31E4C6FD1D
	for <ddprobe@lists.linux.dev>; Sat,  1 Apr 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168039270576.11082.3649054237097736415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1ccdd86490e772a1a0dce2460659416d627f4cbc3563d88d766404c010211ba
Date: Sat, 01 Apr 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680392705
