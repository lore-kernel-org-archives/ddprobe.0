Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCC9A2A
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73F48C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668300654;
	bh=b34D/gAKvVxx+VjyGyUdy+/HPE4nfu7sK35lFZCbZms=;
	h=To:Subject:From:Date:From;
	b=vEd0Agbe+i64d3JTZBWbfXhouMPEjQgSF7ARumumGj6lHATZW/lUsgIDwayyKJ48X
	 46qsRv6SrNs8fBuF1AfDF42ioKtn1py/8Q1SGKeg/JYicR+3k/Vt7CEpFM0SD54Oaj
	 biPnDw3ks5FQb1cA3Oj8QccUh95YAVQIEDu8AwirH2NgH/+eYJi1ZycMCUFqPDZAOX
	 iNv5DyHkJhN9iB4IThNs/9nUACJrWwbLacfoTHeSWpNNDOv4LOlK52DvCnMYBkTAyu
	 O16LiWtvhyFlhP30VMFijpRL3da0PyKr+23Y10MOKrXoAMUlfRqCSyBFeKv7UVIyiT
	 2hExpu8nwfGng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58810C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166830065433.30894.15121111351748566650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9082c7d855fdb8436673217ffd22cd326e5b251356970c19e8de0faec2180f5
Date: Sun, 13 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668300654
