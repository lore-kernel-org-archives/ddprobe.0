Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5068111C
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71BFCC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662151253;
	bh=rWBLsGmnjnQut0U8gwGHUvgX3/HTAAKZqb90UFKYQLc=;
	h=To:Subject:From:Date:From;
	b=uH26I/nYPZJlVQY1H3tOouN6Svk6Q8zEFd/7rjIYuaWY58UJytMEFCVu/vKC/MSuH
	 PZxAVqzqB37dGKKQK5V1Q6wtdEKo0X7gbl1H24wQoXgRuS3GtmpGryBEskHciBDhwl
	 s+wEkiLbMeXdoSX2AwUAhCWFVoUmAvgZrFpUOSLXSRFG/8fcQQ4hqbTill8KK77mOi
	 Ao6YyFIXUCOywsEE77pthGTRa/1503N9OebVegHCtM4qoopT7aX6usCQsKaiYqqir1
	 hu448SZSoO+zRSrKgbe9mnUPepe1Ja9FCVYYYAr90DUVnDKc0EamMPnn2O4BQgfQ7P
	 n2SgolD85n/Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5772EECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215125335.13587.6767136504512059227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698a9e89a7d36b6d6a8c333aa947cc3b2dadb7d5507b523990c15589bb555376
Date: Fri, 02 Sep 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662151253
