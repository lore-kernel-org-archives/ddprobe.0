Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7ECA621
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90C04C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670465454;
	bh=Q4saUY+krsPt5aIAbUlnMllbGe1gKOozzrg30qY0xvQ=;
	h=To:Subject:From:Date:From;
	b=sAHAmLgEkOzfFHsLZrxm+D1jxmn4fggwf5cg1x6tFeex//bGRBK3nBf86xKiw+KE2
	 qrvFOqC6YHNr5Pvekt6ULbIUtGmdnA72cjFH/TQBPp+OnVsYmHNMAXStfwzgetoBnF
	 hsn5PQVsujkCsg5CApCgmXBpPw2R0ylRb0gsF26QTZxAQVAYrMmAZHIwnaNhL+v5v4
	 P6KpEbnXWSaga2Ttujc0nxHzsbOk0PncJeMYu1wqQA3SeEJ7vwkOKaqyEHwOhwserj
	 ZOKEA3LGf5nHwdOz6kwPE6Y4gxXNV1ra8/qLpFH3sunY7qa5uYNlBGge+kPhJidXAG
	 gvhMqQhnojwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFFEC4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046545443.11427.4577864813046020480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d503fa1beb4a13fa53a881e7c947521d45592f43f9cdb4defbf301ca8617df62
Date: Thu, 08 Dec 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670465454
