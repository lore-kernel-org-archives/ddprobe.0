Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12792F5F
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7422DC433B5
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669902054;
	bh=9QznMEKVvzNk8mJngPEbFC4ServQKGJfryLciaVmPJg=;
	h=To:Subject:From:Date:From;
	b=ulF+1aeNUVegCuHHt1lkTAsBViHO44USjZMw/2HydhwKgZlG8G/WXYmNuhs5T2Kel
	 Pi07oT+V/hd2ySc1kZ71BXh5UdCRklto+pjXzGCQLexfoi/GWEMoQKTM4pDnw6ZyGV
	 y1Tm6bb4jaBM6KEhiY4hJi+nsnhPgjSKkNjpm0VMpOr/9IhswT0p7pKKgd4i761QEI
	 p5wBwb8hqFJUQ4X64KHZ72aNSSUH1pnKGDa0Ph37QyQfJPZMyAY4SvRPU818yiemf5
	 qeq4hxmXGqaWECFJs8g+RbrP1TIaCtPLd8u8hqTlLcLqRcUn3OvnJdvI1Ggha26ZyF
	 kt5+5lZ/Jd1iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EEBC4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990205435.21466.16352254127275851263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fe10e10d34d5d33e0974bb14a484d476f76c95ec6064e90e70e3caf53d8d58
Date: Thu, 01 Dec 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669902054
