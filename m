Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 663021FAB
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4053C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694255048;
	bh=2C07RNcMH2FV4QWCqqNoU1G5qLSv/OwJNYjCl9pngKA=;
	h=To:Subject:From:Date:From;
	b=b2xt8PnOvfEcGyLbAZ5k11SJi/e77f/Zt62oMRDNoc5Lbce5gcIr9xzqMliUvXGGq
	 rgAGZAfJ/uYALNrbMy5r2sZhEEuFHnxg3myXnNSIHHujmcjrhOziWhrmAMVLJJjv32
	 Q8bh78JSzwhJgSPz4CxCJqY90FQaHxfPcAHvpn6WuQVS+HIqGvmDyRI0bMrjX54/oR
	 hziLo/z2w4NCZd002nH6UCibSUVBGeD+VnFojejNY34BYl+NuMBVOMV5t01rGXETA2
	 a3cMsjoYvZm49HwdbVNRuzZMvqS3vF0gi+yjO26nYrBme1FdqKVf1QUcJDiPMyh9k5
	 FtdGWhOii05Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DECEEB585
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169425504871.17981.5303322865709819164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed5c67d46d73c567affd219288aa1e1ceda943ec31a6f52007d326cdaeabdda6
Date: Sat, 09 Sep 2023 10:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694255048
