Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB63417C5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7070EC433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661579452;
	bh=MlhYA0Ywfj5jn6mcWN/iQedO+Ya2E4jeIpS4MNN0UP4=;
	h=To:Subject:From:Date:From;
	b=ez0f7u4IO4S/N49nUfzoXINVQsuNG9Dk21vEdXAPFL+0yjCJ6pAmvKzqzIgtrY1tw
	 Tfus/JXi5tHIZY9ews1ODg3GskkgxIn4fmEu6eGyGnKAG/Thb5rFrjhHTNW0+HW1u5
	 StOcXsF6IP4paNY0+2DcZE0EtgvwWaUAB0K3b3Y5WzcXUuzxixDLLM+Q9taIhLG6fY
	 7eufrReybpi9HqYMBJAjgsyuA7fTpc1UZRcUtA69t0DGKe5eKe1wAt7uWbwggn8fiU
	 UE+pd9Eou/e6JSsaW+oiEupJ2h/eEmTLUyNfdv9R4KNsJKb7SZgj16WVAYP5F2ifuo
	 C5gVT9Dd4Xhyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D85ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157945234.4285.15986445563057853304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d489d2a5aebcba5f8fad2d558d059f10cd38de004ed7a887fa253b6fdb2348
Date: Sat, 27 Aug 2022 05:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661579452
