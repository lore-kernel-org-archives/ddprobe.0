Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454AF253A8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 23:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5574C433C7
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691191988;
	bh=irpdVkAUVNd57qNQjewhn89C6WrPHfus/ujJWKIrcEI=;
	h=To:Subject:From:Date:From;
	b=Ml6Hhy9vdrMs6gTq8MuxcbHm/8ZAC7XCoHkiO4E8KQDebgbtE3eq23fhlVOwS/F5I
	 2q3Hr8W5ZDetCzhQHvqetfwsG/PhTUiPgJTellVhqRFDg62X4nss1IRQxNokQpVXXR
	 WmfDPTHvw8/TDX4qFF5t5tJRY0TuckDcr2TqNh+FV9xslGbYuyOJ4v/dTD+iLDcVvk
	 a/mYvuS0wscPerqtT1ygtTg06nqas8/x/9LZP1MoOI3C5uE4bbRnipfHSF7VqrTv1C
	 cE6FtR57zwL6+2Y7eDDUeKIPki24bxQDb6JYUkVj9wokKEJnc289AjharwBlqJQfuF
	 f1fyrOgegssZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB29BC04A6A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169119198869.25723.17316829274851945043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7d977ae0a61b2f5c2604fe8be833b52609034be0a024118a4136feabc216ef
Date: Fri, 04 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691191988
