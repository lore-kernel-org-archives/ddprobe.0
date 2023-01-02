Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E645C28EA
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8ED9EC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672686087;
	bh=G8nyymxmsQ7jTuDL1oeTkIFdlgNAa7j/WauF4yGaIRk=;
	h=To:Subject:From:Date:From;
	b=a3L4uy2+InSg9nYgtBJNys2V5sX65kx1qrUDVCHMvBpD8ow3zWl0hgEKxcIy6c5q3
	 nEg/WV1qL3bCEAZxY0y49X5JSFODtmovO2wXSYsqXiUxCW8EF/D6GQz++aIuuodUaO
	 MWNges9Csb2wSpykJxtI94abEVl16RtIALcTdzl4u86zLRVaYT3qzbXcmdv4raAQUw
	 nKd4gtLiwtcehz7eyFi94q1Gx0OOxhQLDdZ+zU5JSYNsvfLypb4oL8ssiOMiXRJoJW
	 chyF2QNWbIHIlbQvs1JLqbzNG8cIB8RHUUFmVj3ZaCK//mwUuiCQjgaPsuqhwjsSCW
	 RLuaEtDf3G0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 723F7C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268608745.20769.16349954196551016340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39270dcd7057215950ea7cea3be18f96b20dd0097ade8dc3bf3f3f08cf51773
Date: Mon, 02 Jan 2023 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672686087
