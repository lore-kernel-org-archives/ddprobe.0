Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4296B2F22
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E85C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682775365;
	bh=bXH8ily3qrfk09K/gcIMI4n8AMDsoySzfnJmX/e2cUo=;
	h=To:Subject:From:Date:From;
	b=NmiKcgVPybSjkynev0qQluJ/K/zSfy0Pp0AkMORuS+WTxJK2UCDFBV0qX/95y87GW
	 yjNHWf+UEvW/gLfWNRIo88TB44rArTNjsnniKTdpBHvz5vMs9yjOZmQ4NWzvp2PbHW
	 WZAQMg3kepRZtyoTDJjpgiX/Kmn+mDb6Pdd47g3YFBFI7w48gkWg1rliqI1jM+8IOD
	 Q2Ktb5mdgTqMntt5tOcT34Yq9APBEUvetOXKqx2F8N1g+Jqjp/i03M18wSU/HbcuqX
	 QAznomrZD/OSA/4+xSkd1xWwzzTRMJ9jgNnDohma2bIecyEf99IZaWXtIk/1eB3Q3z
	 ezNHTWKk8Z2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D40C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 13:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168277536574.2427.9165630798570497193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2356fe59a08b2ca0680b1e59c327229f0f507d02cbb1dbb5f9dcfb7ef63c63ae
Date: Sat, 29 Apr 2023 13:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682775365
