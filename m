Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9BE538B
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E80CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661894453;
	bh=byFbYDaoc3XNH+LIu7CY9vtdwnBkYAo3NWN/b8r2YzY=;
	h=To:Subject:From:Date:From;
	b=MqVFGcYvZDq0oKQNLtMpHQaoiSst54lHeZtm79Yi2g7k8NMRWBPA4+A2mAryEVwYA
	 rjsxGCu6D7FPjHsaJb2HG8uJQF6TB2X3iT09hYN2AqLxUUPCS7IYCV+YfVdAXM84Mx
	 b7LglZ5YPZz8gzWZQJ/tjMYg6yrXBNKpcd79+SAiVO2cRB3uBXmMCpGM9Az42oUHdO
	 B74pI06BGo8Xrtew5xXkj+fLy/pzM/PBRQZW3p4a+zPzS+55lIaMnbsLcv2iGE3nRn
	 cCFMPA7yUH70VCH0ijWzelGmp1t8oqB9CGbKhGyj7dYvSrcIRyZo/2l8h2xtgHpiiv
	 U/OCF5/7xn15Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5324AECAAD4
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189445333.3455.13946168530843691446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edf88a34c931bfa5273a1a710b774bbcb4af1b2ebb874a91bde0ca24e59d9fb
Date: Tue, 30 Aug 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661894453
