Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46933110A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE9FBC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680936066;
	bh=w8wUfzL2Z3KnIdLTxsuRNap8eadBGs62LHDqXmEkL6c=;
	h=To:Subject:From:Date:From;
	b=hKQDFEqyh5VpceDUbjIlhoZLltu+O3zPiHR58HOhSSnJVczvdo2MyuFIzvwBbIrT6
	 oTVFV4I3j3BpnOgrHtB/x1LMBlQJYl2sC+DinR6B7XC9LUVwGFNyWlzw1LQWIKNw9w
	 nNOQW1tYOIGL6W9xXtauO0xvSfhSWi/yYvuBRTwpom0vpe6SNAVkT4SIq8crVW/glt
	 zuoNRXIK51BHMXl124FUD+JnSkPxH9nga6DltY0VCVJFtBB711uYqo6cimMVd8XAlH
	 9WzFbdITLoh5fTvI3XeJkcvKw4eEliylABdbcYNahNoZup8psE3Wv3ow2zaNEJHVhu
	 9YdfhD9xXSuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF884C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 06:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093606580.17660.14365148539232438185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5098c8d85fe2e796b59674cf2e4a6fcf503cd02e1d789ebfb23651f0ef72ffd
Date: Sat, 08 Apr 2023 06:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680936065
