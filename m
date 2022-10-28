Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F941FAD
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BA3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666943454;
	bh=iWFUPaSpBVM73aEX51vH4+IJC6GO1nUIEo4QGRYWbBU=;
	h=To:Subject:From:Date:From;
	b=CuDnUAMXVbyVfqU/hRIK2mbMyLmAtypw398wmiItu/fB1IQi07kcZZM87KGrCpzVV
	 g5R2JRCtFyt6B6KbEe1kEIoaidQRMaySngRlVo21FW/19AvVxgfHk3hOSfSUhB2Dsn
	 H/SX856TX2+JHEjPKNUyR478DiWbo65O+kZqwmWhbWXgAP6jOnZdaT1L9W+7j80GzS
	 VIgdNHXe6QO/gtmylApEUbrCF7v83y/62O4iAXT/gRh9u68mpFDVYEWGKlXOaYv2R0
	 /b5PAunRKWXI5Ypq1qmWxOJFsvKSS/Gpsy5qYPSNDTdcEch35wk/VJOsKQFAb2mCOA
	 jcTvz5P/BHTDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544F1ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694345433.18081.13320263759837433664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6c4b0e4b55b1b28de0cdbb7213330d3f4651470762345367420010c46ff2c45
Date: Fri, 28 Oct 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666943454
