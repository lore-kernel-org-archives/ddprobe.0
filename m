Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C16363
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710A0C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665066653;
	bh=3mtTruhdxnSZp8uQ6ZMhrMgtILNfa8xzDhiRloYYyUM=;
	h=To:Subject:From:Date:From;
	b=U+ffRjWAQdVlBVxgy5+1ki/FdJifnAL9KKADv1ybCuHBjQSSOAs7wex+ZSyn66BJU
	 cIlYHZ/Vnv39MMlc6Ex0NNgnnNZMkY5wrmeypX7+aQ4cu4SsvoMqURdYteommqR/9p
	 pldLuGyDIdjaW+F6ztKfYMbLShAuLsCE+suTZuaSohE61vCNS+0ReDEHcCYkskN7qr
	 4ZIov4z7BT4r1DzhjP4FXDq9qwfVG8YhTrvLLiA8xgJXHSsM0qHNoFgea6ZGKr3hCw
	 E422fVxkPO0ceLOmBtbzianu4oyiGaOJHv7oU+Y+P7xDtzyKVMiui/HMq6noXhqOut
	 Tkf5xJz+DLRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C45C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166506665333.14211.4664813067292633593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41d7a26ebf7ebb33358f369d946996d3baf23907cf0b2dc928158a5233699373
Date: Thu, 06 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665066653
