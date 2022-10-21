Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD29720E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D873C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666362053;
	bh=msJjuQvgEnFcbknTIzfwMhTQpxL5GoodjPu1HgeNwOk=;
	h=To:Subject:From:Date:From;
	b=FLPcKxYWDAPB5Utwdx1s6hRbVUbU3nA9/R3wLpvWAKfrjzKCq1w6AlRJh2clnO/PC
	 G/fO4u4i88cC/wiaK6lHmF3AprjsiK7YhiQwPt/IQ5GoyIUBcOuD5PJIavlLd6Pc1l
	 7HWBLMNU/rFjrCPuRsTI4DrjUtsSNu+G8ia/xxAtOZkQnrG6t57F7M0Ddhm7H0zCrl
	 d1zYxFTXcL6jVqsL5g3FtscD6OMtPHgc8vA/4TdaufPZzRCYuM/FUnSQqeZ/qwNiRv
	 m/YotXhLKFTw/1VaibXT5Xf8SmjDJn5Y+QPd5GH0yDHAeS8Y0kbmZU9rJe4CgPd6nJ
	 1+CFWN/V9h18Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EC5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636205332.5926.6176214271962975233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6784db904068f4f53fad14be0664384a5898cb226432dc0eee0e03c256f378
Date: Fri, 21 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666362053
