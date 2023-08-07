Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571E5107B6
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DB7C433C8
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691435588;
	bh=UjonDeAucof5Qf2XNRvbIFNU0qXunMUTy+CAEomZRoU=;
	h=To:Subject:From:Date:From;
	b=T2V7giP1ugf2yB2Eq2HizgHR1sQ6ByP3QlDoPz2rJphledaPi1LzFx08pz1lni2jG
	 IBD6CqY+4cmMQw/85QTli6F6mKADHWFq3egXvyDRQtarJFMSZ8xd9YI0rDpcYBgKCG
	 8sDyFTVF1F5wAnBOfvBCcemRNOv69TrSbYvT3+K9YDlyfS/+TF5zqPlkh73NoJmHaj
	 z1+OPmxWODQT7xlKRDuPKi2AeiIMxYVCf3/Dpb67I+XaCZkXIR1ahD5o0a/n3NwIL6
	 BLeXII8yf+36NJWKIxrVPiHhtrGBNVCgOrrkx8pn71YdIqgLAaNckOuERYnsyLuh0W
	 xnUKaKIVpw9DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4929C001B0
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169143558871.10752.9518353073846969821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953de84db70bc0d168fc62a7ed73ff188f0424ef4f964f95ff2ad5473388f738
Date: Mon, 07 Aug 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691435588
