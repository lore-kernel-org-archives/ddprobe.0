Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B80B97C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AF0C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662637253;
	bh=3SCQ+Nq81MUujxeB2IpQRfV4NIBZaFdPZdHMHgHVa8A=;
	h=To:Subject:From:Date:From;
	b=i/D9kwBrA06p9/TqA3Ww14IqIMGCyyGc7/3NMFwekcuzaUFiBuhENY4Wl7tJaL+5P
	 IyrXLJUKYIpBYAfM/OLzkNHClJARLodU4gSSIr5E6Cmq13XWvql4mx0mzyXZiVcV43
	 83U/ZXb7U1uwNfGab76/v/IBq6VEKnTbCri+0TVY27av9OnOSxOz4n1IrHGrrH1qL7
	 FlkdLu2adrj2dnzNOiZOlmhMgq4lQXdH9FnwkkJFIncmaveCQ1s6B6peKVTqfcKDC5
	 Px6NuLvut9Zy/htJV8N9cHRCBWBB0HRDTHdIWiezDQWulA97kF9i9dBfWdgCDdixIp
	 VOqQUYZKN6qAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514EEC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263725332.14504.1279676757437205285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24c9a7f8641b44a1808fda97944e8d278fdf43d02d9c46431307783d6c9f9ef
Date: Thu, 08 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662637253
