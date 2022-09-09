Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA069808
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B4AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662725453;
	bh=7Izj4du9YI8uIM3Wls/0SutNrf7Omv4zWh5O85xt7KU=;
	h=To:Subject:From:Date:From;
	b=cHSttfd0nkev5bwBGxTeENXjY37S4/qQ6+HKNPH22E8BufVMsM4P9gfqRwg9JAemt
	 nIZCsgd2xbUaOsRLiMqQ2vUqOEkaPNchdz3zNSLVe3ur3H4xlJ7g/m6Yjf1Vu4sZQ1
	 24na2DOVwMzeQz5Rz3AMa79g3YMV+S+VF4GAG3iSqdEjYav/2c1ky72yCxuwkwhgPI
	 qAEXyE6EWUT+ok85OHOkN5kmn3slv2raune2q5/agyoRZD681lRxvgQ2ZKnRR1JpyK
	 7xMEY3gh+Z5SKE+pglaQ3dWmPFjhnLKauvg9MeTPGkIZQmUrPFK/3papsixhQoWOCG
	 SHMn2Z3RRE0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55720ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272545333.21615.7707943659293808742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7148d1087ab2aa9fbcd526464bfae339f2c422e7a52bb92c2605919e567477fa
Date: Fri, 09 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662725453
