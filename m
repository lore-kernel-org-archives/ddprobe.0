Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1647E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF109C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682930286;
	bh=YntMNjsiuGj0/M93nEqa40Qoa2VyyRoFTx3FhVUCad8=;
	h=To:Subject:From:Date:From;
	b=Wu4QqVscM5jdlZfbE9ashCD+jKp8ECatDtoXfAa2/peSbOU5c1x3vEx3x7Kepzbio
	 5xv3313VQrvsg1FmZCu449pjNRkBobcpVy3xsO+jNg3O2a3ovmTu8tg5Rk+H2ys0TQ
	 W+GZ3NmzXwYZytGRoySsTo2sRUfD3UG4FO0zmy9nDqtrYz98nIGPcSWAje7pt2NbY4
	 LLAXkEwfnE/o2IqR/oH/TeHIDIDDjHOazOoj4l6AFOtCoEUs6pp6l/VBRsQ1RRGjWg
	 9RCjeGmbAUa3w8ZO+omswB0wvO06jTiiS/ydufdfgzLW16RdsSjL9y2U3LVwXANYpi
	 cGETTILJW5AgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E00C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 08:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293028578.32243.3005259118575188277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c512147b0c99988dd86d754535db6b054aa57b9bf2787e3277700dba077b63
Date: Mon, 01 May 2023 08:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682930285
