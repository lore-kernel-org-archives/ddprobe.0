Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC97FA461
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A346C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669662654;
	bh=HbfStw867gx5NrRqbjzho5wxFaLsz/zsmrZIsXaQhAI=;
	h=To:Subject:From:Date:From;
	b=mDLvUBlK0y8Wzqmox7wH0OWJdM13MSKuPQev8NcTie2eLD/Su31enu/q9ima3zj/M
	 PrlE4wgpWp3p2b3txVTXxbSHb3e6XlT6RDuS6TBDvAbBMpfDfbxV5MhiJL9iXN7BKE
	 Y4BtxHFUZd0sZpob1d/il/7lbYRaJP5HY+ZIfSlvbwxrx4JW/5KsM9Q9f9jnKXKg51
	 Es1A3rPzw+dOrp29ZdtVPLSkOUW9/KfVxa9iL0RvPxvCZn5p3P2RIxowvJFPt2djwj
	 FOvb9eih51+VrwylA0vmrrrHT3ZBy4ZsKlzHDM5qdqh2ES7U/1i3r077P8CRE+Q8WQ
	 hVOgHSgkpR3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA09C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166966265437.3923.7055565425939158822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58a417c3b5e6a4077caa85d1547c5fa0aaae4f270d094299b127f95bb29e6d22
Date: Mon, 28 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669662654
